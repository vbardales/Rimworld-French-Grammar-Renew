# Gallery of the Workshop page, the story series (AUDIT.md 9, GALLERY.md "Une seule histoire" and "Shotlist : critères d'une scène à 4/5").
# Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French, and is left out of every other pass by name. A green run proves
# nothing about an image: each one is opened and read. PLAN REWRITTEN 2026-10-25 (third version, table in STATUS.md): the SCENES BELOW
# STILL HOLD THE 2026-10-18 TEXT and are rewritten when NPT pushes `a big message {string} is held on screen`. The letter pair
# (08-gallery.feature) stays as the last two images; they are interface windows, set aside from the score.
#
# THE STORY: one autumn evening and the morning after in the tea room (the hut). Nelim is the protagonist, her husky Yuki and the hamster
# Noisette her guests. Same outfit and hair all evening (forest green collar shirt (46, 98, 74), FancyBun); the morning after she wears a
# mustard basic shirt (232, 190, 70) and Pigtails (she dressed and redid her hair overnight). What the mod does is invisible on a pawn, so
# each scene shows a short message (34 characters or fewer, one line) that the grammar resolver writes: the French worker corrects the
# source text or not (le husky, la harpe, son épée from the source "sa épée").
# RHYTHM: 17h, 18h, 19h, 21h, then 7h; the game is paused in each scene.
# 1 17h Clear, WIDE zoom 4, frame (141, 72), opening: Nelim starts at the stool (140, 72) and `Ingest` on Rawbean (140, 71), 40 ticks then
#   pause (she just sat, the guests wait); Yuki (143, 71) and Noisette (139, 73) face South. "Le husky et le hamster attendent."
# 2 18h Clear, MEDIUM zoom 6, frame (140, 73): fire axe (140, 74), lit TorchLamp (142, 74); she hauls the long sword to (141, 74), 25 ticks
#   then pause; Yuki (142, 73). "Elle pose sa épée." (shows "son épée").
# 3 19h Rain, TIGHT zoom 7, frame (142, 72): Royalty harp (144, 74), lit TorchLamp (141, 76), the sword stays on the floor, PsychiteTea
#   on the table; `Ingest` on PsychiteTea, 30 ticks; Yuki (141, 73). "Nelim écoute la harpe." (source "la harpe").
# 4 21h Clear, MEDIUM zoom 5, frame (141, 72): two lit torches (142, 74), (138, 70), the cold tea still on the table; she hauls Kibble to
#   Yuki (143, 72), 25 ticks. "Elle sert le husky."
# 5 7h Fog, WIDE zoom 4, frame (141, 72), closing bookend of 1: same gesture (`Ingest` on Rawbean), three settings off, same message
#   text "Le husky et le hamster attendent." which the game alone writes as "L'husky et l'hamster attendent." The mod is the difference.
# RISKS: zoom 4 and 7 and the gesture ticks are unplayed; `Ingest` on PsychiteTea may be blocked by drug policy; harp cell a guess; fog and
# rain may not show in a roofed hut; message must be resolved by GrammarResolver. HATS: none in the series (GALLERY.md criterion d).
# Pose: no sitting step exists; `Ingest` at a table seats her. Animals: clear the place ONCE before spawning ("kept out of" would send the
# spawned husky away). Hairstyle names are NPT's CATALOGUE-LOOKS.


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
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 92, 64)
    And Nelim's Pickle Tools: "Nelim" stands at (141, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "FancyBun"
    And Nelim's Pickle Tools: "Nelim" carries the item "Rawbean"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (139, 71) at zoom 6
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim nourrit le hamster et le husky de haricots."
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
    And Nelim's Pickle Tools: "Nelim" stands at (138, 74) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Ponytails"
    And Nelim's Pickle Tools: "Nelim" carries the item "MeleeWeapon_LongSword"
    And Nelim's Pickle Tools: "Nelim" face kit is "smug"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (140, 73) at zoom 6
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Elle range son épée près de la hache de pompier, puis polit l'<color=#D09B61FF>épée</color> de son père."
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
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (141, 73)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (141, 73) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Robe" dyed rgb (112, 64, 140)
    And Nelim's Pickle Tools: "Nelim" stands at (143, 73) facing East
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Wavy"
    And Nelim's Pickle Tools: "Nelim" carries the item "PsychiteTea"
    And Nelim's Pickle Tools: "Nelim" face kit is "calm"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (142, 72) at zoom 5.5
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim écoute la harpe ; au loin, la forge d'<color=#D09B61FF>Éclat</color> s'éteint sous la pluie."
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
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (143, 72)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 72) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Parka" dyed rgb (36, 52, 104)
    And Nelim's Pickle Tools: "Nelim" stands at (141, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "Kibble"
    And Nelim's Pickle Tools: "Nelim" face kit is "sad"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (141, 72) at zoom 5
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Le thé refroidit ; le husky veille, et le Sanctuaire dort."
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
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (142, 72)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (142, 72) facing South
    And Nelim's Pickle Tools: an adult animal of kind "Hamster" named "Noisette" is spawned at (143, 74)
    And Nelim's Pickle Tools: the animal "Noisette" stands at (143, 74) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (232, 190, 70)
    And Nelim's Pickle Tools: "Nelim" stands at (140, 74) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Pigtails"
    And Nelim's Pickle Tools: "Nelim" carries the item "Rawbean"
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I frame the cell (141, 74) at zoom 6.5
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim nourrit le hamster et le husky de haricots."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 5 the morning without the mod"
    And no errors were logged
