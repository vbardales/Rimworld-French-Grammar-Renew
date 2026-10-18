# Gallery of the Workshop page, the story series (AUDIT.md 9, GALLERY.md "Une seule histoire" and "Shotlist : critères d'une scène à 4/5").
# Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French, and is left out of every other pass by name. A green run proves
# nothing about an image: each one is opened and read. REWRITTEN 2026-10-18 after the shotlist audit (outfit per scene, action, plan per
# risk), NOT PLAYED. The letter pair (08-gallery.feature) stays as the last two images; they are interface windows, set aside from the score.
#
# THE STORY: one evening and the next morning in the tea room (the hut, at the water's edge). Nelim is the protagonist, her husky Yuki and
# the hamster Noisette are her guests. What the mod does is invisible on a pawn, so each scene shows it where the player meets it: the line
# the game writes at the top left of the map for what is happening, built by the engine's grammar and corrected by the mod. Every scene
# carries an object or an animal whose French label exercises a correction (hamster, husky, haricot, hache de pompier, harpe, épée).
# EPISODES (criterion k, one story that moves forward): who = Nelim (protagonist), Yuki the husky, Noisette the hamster; where = the tea room;
# which day = one autumn evening and the morning after; rhythm = one scene per hour, 17h 18h 19h 21h, then 7h. 1 she feeds her two guests;
# 2 she puts away her father's sword while the husky watches; 3 the rain starts and she listens to the harp with a cup of tea; 4 late, she
# brings the husky its bowl and the tea has gone cold; 5 next morning the same meal is written by the game alone, without the mod.
# Scene 5 plays scene 1's sentence again with the three corrections off: the whole mod is the difference between the two sentences.
#
# TIME (criterion a): the game stays paused in each scene; the hour is set per scene (17, 18, 19, 21, then 7 the next morning), so the story
# passes four hours, a night, then a morning. Weather: Clear, Clear, Rain, Clear, Fog. Temperature 20 degrees. Place: the hut, one corner per scene.
# FRAMING (criterion f): the camera is framed on a cell next to the subject (`I frame the cell`), so Nelim sits off-centre; foreground = the
# animals and the held item, background = the wooden wall and shelves; light = daylight at 17h and 18h, dusk rain at 19h, two lit torches
# at 21h, grey morning at 7h.
# DECOR (criterion b): each scene names its own props, placed or lit before the pawns and removed after the shot (`the decor is removed`).
# NO SCENE IS A LINEUP (criterion i): one subject per image, the animals at different cells, facing South (toward the camera) in 1 to 5.
#
# SHOT PLAN, one line per scene (a to j; risk AND plan, criterion h):
# 1. 17h Clear, hut, frame (139, 71) zoom 6. Nelim, terracotta basic shirt (214, 92, 64), hairstyle FancyBun, kit smile; ACTION: she holds a
#    bean out (carries the item Rawbean). Decor: Rawbean on the table (140, 72). Living: Yuki the husky (143, 71) and Noisette the hamster
#    (139, 73), both facing South (More Rodents). Says: Nelim feeds her guests, and the game writes it right (le hamster, le husky de haricots).
#    RISK: the message at the top left may be too small or hidden by presentation mode. PLAN: read it on the first capture; if illegible at full
#    size, ask NPT for a larger message step, else fall back to the letters; hamster hidden behind the table: move it to (139, 74).
# 2. 18h Clear, hut, frame (140, 73) zoom 6. Nelim, forest green collar shirt (46, 98, 74), hairstyle Ponytails, kit smug (proud); ACTION: she
#    holds the long sword she polishes (carries the item MeleeWeapon_LongSword). Decor: fire axe on the floor (140, 74) (Fort's Firefighter
#    Gadget), TorchLamp lit (142, 74). Living: Yuki (142, 73) facing South. Says: the sword is hers (son épée, the gold l'épée de son père).
#    RISK: the carried sword may not draw, or the floor axe be lost in the shelves. PLAN: if the sword is not drawn, put it on the floor beside
#    the axe; the lit torch gives a bright pool at 18h to show the axe.
# 3. 19h Rain, hut, frame (142, 72) zoom 5.5. Nelim, plum robe (112, 64, 140), hairstyle Wavy, kit calm; ACTION: she holds a cup of tea (carries
#    the item PsychiteTea) and faces the harp. Decor: Royalty harp (144, 74) (1x1, French label harpe), TorchLamp lit (141, 76). Living: Yuki
#    (141, 73) facing South. Says: music in the tea room while the rain falls (la harpe, la forge d'Éclat).
#    RISK: the harp cell is a guess (the hut photograph shows a shelf at (144, 75) and a brazier at (144, 70)); rain may darken the frame.
#    PLAN: the placing step fails loudly on a blocked cell, then try (143, 75); a second torch if the frame is dark.
# 4. 21h Clear, hut, frame (141, 72) zoom 5. Nelim, navy parka (36, 52, 104), hairstyle Long, kit sad (tender, tired); ACTION: she carries a
#    bowl of kibble to Yuki (carries the item Kibble). Decor: two lit torches (142, 74) and (138, 70). Living: Yuki (143, 72) facing South.
#    Says: the tea has gone cold and the husky keeps watch (le husky veille).
#    RISK: night darkness hides the pawns; the torch cells are guesses. PLAN: a third torch, hour 20 as a fallback.
# 5. 7h Fog, hut, frame (141, 74) zoom 6.5. Nelim, mustard basic shirt (232, 190, 70), hairstyle Pigtails, kit neutral (waking up); ACTION: she
#    holds the bean again (carries the item Rawbean). Decor: none placed, the bean is the one she holds. Living: Yuki (142, 72) and Noisette
#    (143, 74), the same sentence as scene 1 with the three corrections off. Says: the game alone writes l'hamster, l'husky, d'haricots; the
#    mod is the difference.
#    RISK: fog hides the message backdrop; the sentence is the same as scene 1, so the images may read as a repeat. PLAN: different outfit,
#    corner, hour and weather; if it still reads as a repeat, move its text to the harp sentence of scene 3.
# Pose: no sitting or lying step exists (GALERIE.md): Nelim stands and holds, the animals stand. The message is posted LAST, right before the
# screenshot, because it fades after a few seconds of real time.
# Animals: scenes with a spawned animal clear the place ONCE (the animals are removed from the sanctuary) before spawning: "kept out of" would
# send the spawned husky away again. Hairstyle names are the ones of NPT's CATALOGUE-LOOKS (FancyBun, Ponytails, Wavy, Long, Pigtails).

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
    And Nelim's Pickle Tools: I place the decor "Rawbean" at (140, 72)
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
