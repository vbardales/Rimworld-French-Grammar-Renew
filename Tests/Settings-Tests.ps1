# Settings regressions run inside Run-Tests.ps1, against the actual distributed DLL (shared checks cover XML parse, Keyed parity and source link).
Section 'Settings, language isolation and shortcut contract'

$optionNames = @('fixRichTextElision','fixAspiratedH','fixPossessive','fixPawnKindGender','frenchTypography','verboseLogging')
$defaultValues = @($true,$true,$true,$true,$false,$false)
$scratch = Join-Path ([IO.Path]::GetTempPath()) 'frenchgrammar-test-settings'
New-Item -ItemType Directory -Force -Path $scratch | Out-Null

It 'fresh settings and missing stored values use the documented defaults' {
    if (-not $haveCode) { NeedCode; return }
    $fresh = [Activator]::CreateInstance($tSettings)
    for ($i=0; $i -lt $optionNames.Count; $i++) {
        if ($fresh.($optionNames[$i]) -ne $defaultValues[$i]) { "wrong default: $($optionNames[$i])" }
        $fresh.($optionNames[$i]) = -not $defaultValues[$i]
    }
    $path = Join-Path $scratch 'missing.xml'
    [IO.File]::WriteAllText($path, '<settings><retiredOption>true</retiredOption></settings>')
    try {
        [Verse.Scribe]::loader.InitLoading($path)
        $fresh.ExposeData()
        for ($i=0; $i -lt $optionNames.Count; $i++) {
            if ($fresh.($optionNames[$i]) -ne $defaultValues[$i]) { "wrong missing-value default: $($optionNames[$i])" }
        }
    } finally { [Verse.Scribe]::ForceStop() }
}

It 'all 64 checkbox combinations survive real Scribe save and reload' {
    if (-not $haveCode) { NeedCode; return }
    $path = Join-Path $scratch 'roundtrip.xml'
    for ($mask=0; $mask -lt 64; $mask++) {
        $before = [Activator]::CreateInstance($tSettings)
        for ($i=0; $i -lt $optionNames.Count; $i++) { $before.($optionNames[$i]) = ($mask -band (1 -shl $i)) -ne 0 }
        try {
            [Verse.Scribe]::saver.InitSaving($path, 'settings')
            $before.ExposeData()
            [Verse.Scribe]::saver.FinalizeSaving()
            $after = [Activator]::CreateInstance($tSettings)
            [Verse.Scribe]::loader.InitLoading($path)
            $after.ExposeData()
            for ($i=0; $i -lt $optionNames.Count; $i++) {
                if ($after.($optionNames[$i]) -ne $before.($optionNames[$i])) { "combination $mask lost $($optionNames[$i])" }
            }
        } finally { [Verse.Scribe]::ForceStop() }
    }
}

function Pawn-Rules {
    $list = New-Object 'System.Collections.Generic.List[Verse.Grammar.Rule]'
    $list.Add([Verse.Grammar.Rule_String]::new('ANIMAL_label', 'vache'))
    $list.Add([Verse.Grammar.Rule_String]::new('ANIMAL_definite', 'le vache'))
    $list.Add([Verse.Grammar.Rule_String]::new('ANIMAL_indefinite', 'un vache'))
    $list.Add([Verse.Grammar.Rule_String]::new('ANIMAL_possessive', 'his'))
    return ,$list
}

It 'species gender switches on and off, preserves input and ignores other languages' {
    if (-not $haveCode) { NeedCode; return }
    Reset-Settings
    $map = $tLexicon.GetField('KindGender', $anyFlags).GetValue($null)
    $map.Clear(); $map.Add('Cow', [Verse.Gender]::Female)
    $kind = [Verse.PawnKindDef]::new(); $kind.defName = 'Cow'
    $method = $asm.GetType('FrenchGrammarPlus.RulesForPawnPatch').GetMethod('Apply', $anyFlags)
    # Only Unity-backed translation/log endpoints are substituted; real grammar/rules run.
    $possessive = [Func[Verse.Gender,string]] { param($gender) 'possessive-' + $gender }
    $messages = New-Object 'System.Collections.Generic.List[string]'
    $logger = [Action[string]] { param($message) $messages.Add($message) }
    $original = (Pawn-Rules).PSObject.BaseObject
    $result = @($method.Invoke($null, @($original, 'ANIMAL', $kind, $worker, $possessive, $logger)))
    if ($result[1].Generate() -cne 'la vache' -or $result[2].Generate() -cne 'une vache') { 'French species articles were not corrected' }
    if ($original[1].Generate() -cne 'le vache') { 'input rules were mutated' }
    $settings.fixPawnKindGender = $false
    $result = $method.Invoke($null, @($original, 'ANIMAL', $kind, $worker, $possessive, $logger))
    if (-not [object]::ReferenceEquals($original,$result)) { 'disabled setting changed rules' }
    $settings.fixPawnKindGender = $true
    foreach ($otherWorker in @([Verse.LanguageWorker_English]::new(), [Verse.LanguageWorker_German]::new(), $null)) {
        $result = $method.Invoke($null, @($original, 'ANIMAL', $kind, $otherWorker, $possessive, $logger))
        if (-not [object]::ReferenceEquals($original,$result)) { 'non-French or absent worker changed rules' }
    }
    if ($messages.Count -ne 0) { 'verbose logging ran while disabled' }
    $settings.verboseLogging = $true
    $result = @($method.Invoke($null, @($original, 'ANIMAL', $kind, $worker, $possessive, $logger)))
    if ($messages.Count -ne 1 -or $messages[0] -notmatch 'gender overridden.*vache') { 'verbose switch did not emit the expected diagnostic' }
    if ($result[3].Generate() -cne 'possessive-Female') { 'possessive did not use the corrected gender' }
    $settings.verboseLogging = $false
    $result = @($method.Invoke($null, @($original, 'ANIMAL', $kind, $worker, $possessive, $logger)))
    if ($messages.Count -ne 1) { 'verbose switch did not turn off again' }
    $kind.defName = 'UnknownSpecies'
    $result = $method.Invoke($null, @($original, 'ANIMAL', $kind, $worker, $possessive, $logger))
    if (-not [object]::ReferenceEquals($original,$result)) { 'unlisted species changed rules' }
    Reset-Settings
}

It 'shortcut is hidden by default and uses the native settings worker contract' {
    if (-not $haveCode) { NeedCode; return }
    [xml]$defs = Get-Content (Join-Path $modDir 'Defs\MainButtons.xml') -Raw
    $def = $defs.Defs.MainButtonDef
    if ($def.defName -cne 'FGP_Settings' -or $def.buttonVisible -cne 'false' -or $def.validWithoutMap -cne 'true') { 'wrong shortcut identity, visibility or map requirement' }
    $type = $asm.GetType([string]$def.workerClass, $true)
    if (-not [RimWorld.MainButtonWorker].IsAssignableFrom($type)) { 'invalid worker class' }
    if ($type.GetProperty('Visible').DeclaringType -ne [RimWorld.MainButtonWorker]) { 'worker overrides native visibility ownership' }
    if ($type.GetProperty('Disabled').DeclaringType -ne [RimWorld.MainButtonWorker]) { 'worker overrides native enabled state' }

}
