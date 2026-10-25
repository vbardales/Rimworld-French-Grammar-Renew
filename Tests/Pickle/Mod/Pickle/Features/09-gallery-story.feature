# Gallery of the Workshop page, the story series (AUDIT.md 9, GALLERY.md "Une seule histoire" and "Shotlist : critères d'une scène à 4/5").
# Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French, and is left out of every other pass by name. A green run proves
# nothing about an image: each one is opened and read. PLAN AND SCENES REWRITTEN 2026-10-25 (fourth version, table in STATUS.md), NOT PLAYED: gestures by forced job, then `I advance the paused game by exactly N ticks`
# (StudioSteps), the big message last. Scene 1 and 5: Yuki follows Nelim to the table (mid-walk); scene 3: Yuki lies down, Nelim stands at (142, 72).
# The letter pair (08-gallery.feature) stays as the last two images; they are interface windows, set aside.
#
# THE STORY: one autumn evening and the morning after in the tea room (the hut). Nelim is the protagonist, her husky Yuki and the hamster
# Noisette her guests. Same outfit and hair all evening (forest green collar shirt (46, 98, 74), FancyBun); the morning after she wears a
# mustard basic shirt (232, 190, 70) and Pigtails (she dressed and redid her hair overnight). What the mod does is invisible on a pawn, so
# each scene shows a short message (34 characters or fewer, one line, `a big message ... is held on screen`) that the grammar resolver
# writes: the French worker corrects the source text or not (le husky, la harpe, son épée from the source "sa épée").
# RHYTHM: 17h, 18h, 19h, 21h, then 7h; each gesture is started by a forced job, the game runs 25 to 40 ticks, then is paused.
# LIGHT: the hut is roofed, so the light is its own: daylight through the doorway at 17h and 18h, dusk and torches at 19h and 21h, grey at 7h.
# 1 17h Clear, WIDE zoom 4, frame (141, 72), opening. Foreground: Yuki (143, 71) and Noisette (139, 73) facing South; background: wooden
#   wall and shelves; Nelim off-centre at the table. She starts at the stool (140, 72) and `Ingest` on Rawbean (140, 71), 40 ticks then
#   pause. Instant: she has just sat, the guests wait (before: she came in; after: she eats). "Le husky et le hamster attendent."
# 2 18h Clear, MEDIUM zoom 6, frame (140, 73). Foreground: Yuki (142, 73) watching; background: the lit TorchLamp (142, 74) and the fire
#   axe (140, 74); Nelim left of centre. She hauls the long sword to (141, 74), 25 ticks then pause. Instant: the sword has just left her
#   hands (after: she straightens up). "Elle pose sa épée." (shows "son épée").
# 3 19h Rain, TIGHT zoom 7, frame (142, 72). Foreground: the PsychiteTea cup on the table; background: Royalty harp (144, 74), lit TorchLamp
#   (141, 76), the sword still on the floor; Yuki (141, 73) at the edge. `Ingest` on PsychiteTea, 30 ticks then pause. Instant: the first
#   sip (before: the harp started; after: she listens on). "Nelim écoute la harpe." (source "la harpe").
# 4 21h Clear, MEDIUM zoom 5, frame (141, 72). Foreground: Yuki (143, 72) facing her; background: two lit torches (142, 74), (138, 70),
#   the cold tea still on the table; Nelim centre-left. She hauls Kibble to Yuki, 25 ticks then pause. Instant: the bowl is lowered
#   (after: Yuki eats). "Elle sert le husky."
# 5 7h Fog, WIDE zoom 4, frame (141, 72), closing bookend of 1: same frame, same gesture a night later. Foreground: Yuki (142, 72) and
#   Noisette (139, 73) facing South; background: wall and shelves, the sword on the floor (141, 74) and Rawbean (140,
#   71) on the table, no torch; Nelim off-centre. Three settings off. She starts at the stool and `Ingest` on Rawbean, 40
#   ticks then pause. Instant: she has just sat after dressing (after: she eats). Same message text as 1, which the game alone writes as
#   "L'husky et l'hamster attendent." The mod is the difference.
# THUMBNAIL (criterion j): the message is 2x Medium at the top centre; read each capture at 268 px wide, and if the message is not legible
#   there, ask NPT for a larger scale before refiling. RISKS: zoom 4 and 7 and the gesture ticks are unplayed; `Ingest` on PsychiteTea may
#   be blocked by drug policy; harp cell a guess; fog and rain may not show in a roofed hut. HATS: none in the series (GALLERY.md d).
# Pose: no sitting step exists; `Ingest` at a table seats her. Animals: clear the place ONCE before spawning. Hairstyle names: NPT's
# CATALOGUE-LOOKS. Each scene removes its decor (`the decor is removed`), and carried props (sword, cup) are placed again by the next scene.


@review @timeout:900 @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.clickdiagnostics @requires:lucius.eyegenes3 @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.stagedecor
Feature: the gallery story of French Grammar Renew

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And French Grammar Renew: the settings are at their documented defaults
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: story-1-the-meal
    Given I set the weather to "Clear"
    And I set the hour to 17
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "Rawbean" at (140, 71)
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (143, 71)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 71) facing South
    And Nelim's Pickle Tools: an adult animal of kind "Hamster" named "Noisette" is spawned at (139, 73)
    And Nelim's Pickle Tools: the animal "Noisette" stands at (139, 73) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (46, 98, 74)
    And Nelim's Pickle Tools: "Nelim" stands at (140, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (141, 72) at zoom 4
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: "Yuki" follows "Nelim" within 2 cells
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Ingest" on the item "Rawbean" at (140, 71)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: a big message "Le husky et le hamster attendent." is held on screen
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 1 the meal"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged

  Scenario: story-2-the-sword
    Given I set the weather to "Clear"
    And I set the hour to 18
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_FireAxe" at (140, 74)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (142, 74)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (142, 74) is lit
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (142, 73)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (142, 73) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (46, 98, 74)
    And Nelim's Pickle Tools: "Nelim" stands at (138, 74) facing East
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" face kit is "smug"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (140, 73) at zoom 6
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "MeleeWeapon_LongSword" to (141, 74)
    And Nelim's Pickle Tools: I advance the paused game by exactly 25 ticks
    And Nelim's Pickle Tools: a big message "Elle pose sa épée." is held on screen
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 2 the sword"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged

  Scenario: story-3-the-harp
    Given I set the weather to "Rain"
    And I set the hour to 19
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "Harp" at (144, 74)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (141, 76)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (141, 76) is lit
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_LongSword" at (141, 74)
    And Nelim's Pickle Tools: I place the decor "PsychiteTea" at (140, 71)
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (141, 73)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (141, 73) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (46, 98, 74)
    And Nelim's Pickle Tools: "Nelim" stands at (142, 72) facing West
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" face kit is "calm"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (142, 72) at zoom 7
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: "Yuki" lies down
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Ingest" on the item "PsychiteTea" at (140, 71)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: a big message "Nelim écoute la harpe." is held on screen
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 3 the harp"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged

  Scenario: story-4-the-night
    Given I set the weather to "Clear"
    And I set the hour to 21
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (142, 74)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (142, 74) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (138, 70)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (138, 70) is lit
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_LongSword" at (141, 74)
    And Nelim's Pickle Tools: I place the decor "PsychiteTea" at (140, 71)
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (143, 72)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 72) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (46, 98, 74)
    And Nelim's Pickle Tools: "Nelim" stands at (140, 73) facing East
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" face kit is "sad"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (141, 72) at zoom 5
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Kibble" to (142, 72)
    And Nelim's Pickle Tools: I advance the paused game by exactly 25 ticks
    And Nelim's Pickle Tools: a big message "Elle sert le husky." is held on screen
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 4 the night"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged

  Scenario: story-5-the-morning-without-the-mod
    Given French Grammar Renew: the aspirated setting is turned off
    And French Grammar Renew: the possessive setting is turned off
    And French Grammar Renew: the richtext setting is turned off
    And I set the weather to "Fog"
    And I set the hour to 7
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "Rawbean" at (140, 71)
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_LongSword" at (141, 74)
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (142, 72)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (142, 72) facing South
    And Nelim's Pickle Tools: an adult animal of kind "Hamster" named "Noisette" is spawned at (139, 73)
    And Nelim's Pickle Tools: the animal "Noisette" stands at (139, 73) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (232, 190, 70)
    And Nelim's Pickle Tools: "Nelim" stands at (140, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Pigtails"
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (141, 72) at zoom 4
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: "Yuki" follows "Nelim" within 2 cells
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Ingest" on the item "Rawbean" at (140, 71)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: a big message "Le husky et le hamster attendent." is held on screen
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 5 the morning without the mod"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged
