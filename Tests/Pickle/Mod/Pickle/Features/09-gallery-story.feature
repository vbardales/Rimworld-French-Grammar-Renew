# Gallery of the Workshop page, the story series (AUDIT.md 9, GALLERY.md "Une seule histoire"). Plays in the SANCTUARY pass only
# (wsl-deps.sanctuary.map), French, and is left out of every other pass by name. A green run proves nothing about an image: each one
# is opened and read. WRITTEN 2026-10-18, NOT PLAYED. Replaces the idea that two letters are a gallery: the letter pair (08) stays as the
# last two images, this series comes first and carries the story.
#
# THE STORY: one evening in the tea room (the hut, at the water's edge). Nelim, the protagonist, has her husky Yuki with her. What the
# mod does is invisible in a photograph of a pawn, so the scenes show it where the player meets it: the line of text the game writes at
# the top left of the map for what is happening. Each message is the sentence the engine builds for that scene and the mod corrects.
# Scene 5 replays scene 1 with the three corrections off: the whole mod is the difference between the two.
#
# SHOT PLAN (one line per image, GALLERY.md; hut, hut cells are guesses to read on the first run; Clear weather; Nelim 20 degrees):
# 1. 17h, hut, Nelim at the low table facing the camera, small smile, Yuki the husky and Noisette the hamster (More Rodents) beside her, a bean
#    (VGP Vegetable Garden, French label haricot) on the table; message "le hamster ... le husky de haricots". Says: a quiet meal, written right.
# 2. 18h, hut, Nelim at the shelf, calm face, a long sword and a fire axe (Fort's Firefighter Gadget, French label hache de pompier) on the floor
#    beside her (decor, removed after); message "son épée ... la hache de pompier ... l'épée de son père" (gold word). Says: the sword is hers.
# 3. 19h, hut, Nelim and Yuki facing the camera, a harp (Royalty, French label harpe) behind them,
#    dusk through the door; message "la harpe ... la forge d'Éclat". Says: the evening goes on with music.
# 4. 21h, hut, night, Nelim with her hair down, Yuki facing the camera, braziers lit; message "le husky dort, et le Sanctuaire aussi".
#    Says: the evening ends.
# 5. 17h, the same frame as 1, same pawns, the three corrections off; message "l'husky ... d'haricots". Says: this is the game alone.
# Animals: scenes with a spawned animal clear the place ONCE ("are removed from") before spawning; "kept out of" would send the spawned husky away again.
# No pose of sitting or lying exists (GALERIE.md): Nelim and Yuki stand. The message is posted LAST, right before the screenshot, because it
# fades after a few seconds of real time.

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
    And I set the weather to "Clear"

  Scenario: story-1-the-meal
    Given I set the hour to 17
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
    And Nelim's Pickle Tools: an adult animal of kind "Hamster" named "Noisette" is spawned at (139, 71)
    And Nelim's Pickle Tools: the animal "Noisette" stands at (139, 71) facing South
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 71) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (141, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Bun"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: the camera is centered on "Nelim" at root size 7
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim nourrit le hamster et le husky de haricots."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 1 the meal"
    And no errors were logged

  Scenario: story-2-the-sword
    Given I set the hour to 18
    And Nelim's Sanctuary: the animals are kept out of the sanctuary "hut"
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the resource readout is hidden
    And Nelim's Pickle Tools: the selection brackets are hidden
    And Nelim's Pickle Tools: I move the mouse to (10, 10)
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_LongSword" at (139, 74)
    And Nelim's Pickle Tools: I place the decor "MeleeWeapon_FireAxe" at (140, 74)
    And Nelim's Pickle Tools: "Nelim" stands at (138, 74) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Bun"
    And Nelim's Pickle Tools: "Nelim" face kit is "calm"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: the camera is centered on "Nelim" at root size 6
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Elle range son épée près de la hache de pompier, puis polit l'<color=#D09B61FF>épée</color> de son père."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 2 the sword"
    And Nelim's Pickle Tools: the decor is removed
    And no errors were logged

  Scenario: story-3-the-harp
    Given I set the hour to 19
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
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (141, 73)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (141, 73) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (143, 73) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Bun"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: the camera is centered on "Nelim" at root size 7
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim s'assoit près de la harpe ; au loin, la forge d'<color=#D09B61FF>Éclat</color> s'éteint."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 3 the harp"
    And no errors were logged

  Scenario: story-4-the-night
    Given I set the hour to 21
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
    And Nelim's Pickle Tools: an adult animal of kind "Husky" named "Yuki" is spawned at (143, 71)
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 71) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (141, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" face kit is "calm"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: the camera is centered on "Nelim" at root size 7
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Le thé refroidit ; le husky veille, et le Sanctuaire dort."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 4 the night"
    And no errors were logged

  Scenario: story-5-the-meal-without-the-mod
    Given French Grammar Renew: the aspirated setting is turned off
    And French Grammar Renew: the possessive setting is turned off
    And French Grammar Renew: the richtext setting is turned off
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
    And Nelim's Pickle Tools: an adult animal of kind "Hamster" named "Noisette" is spawned at (139, 71)
    And Nelim's Pickle Tools: the animal "Noisette" stands at (139, 71) facing South
    And Nelim's Pickle Tools: the animal "Yuki" stands at (143, 71) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (141, 72) facing South
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Bun"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: the camera is centered on "Nelim" at root size 7
    And Nelim's Pickle Tools: I let 5 frames pass
    When French Grammar Renew: a message is shown with the text "Nelim nourrit le hamster et le husky de haricots."
    And Nelim's Pickle Tools: I let 2 frames pass
    Then I take a screenshot "story 5 the meal without the mod"
    And no errors were logged
