# Gallery of the Workshop page (AUDIT.md 9, GALLERY.md). Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French,
# and is left out of every other pass by name. A green run proves nothing about an image: each one is opened and read.
#
# THE STORY: an evening at the tea house (the hut, by the water). Nelim writes down her day, and the game turns it into a
# letter. The same letter is shown twice: first as the game writes it with this mod, then as the game alone writes it (the four
# corrections switched off). The difference is the whole mod: l'husky / le husky, d'haricots / de haricots, sa épée / son épée,
# and the two words in gold that the engine's own rules stop in front of.
#
# The letter text is what the game's grammar produces BEFORE its post-processing (le husky, de haricots, sa épée, la <tag>épée,
# de <tag>Éclat): the engine builds it, the running worker corrects it or not, and the dialog the game draws is photographed.
@review @requires:nelim.pickletools.screenshotmode
Feature: the gallery images of French Grammar Renew

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And French Grammar Renew: the settings are at their documented defaults
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Sanctuary: Nelim has her own face

  @timeout:240
  Scenario: the letter as the game writes it with the mod
    When French Grammar Renew: a letter titled "Le soir au salon de thé" is opened with the text "Le soir tombe sur le Sanctuaire. Nelim nourrit le husky et prépare un plat de haricots.\u000A\u000AElle range sa épée près de sa hache, puis polit la <color=#D09B61FF>épée</color> de son père.\u000A\u000AEn rentrant de <color=#D09B61FF>Éclat</color>, la vieille forge, elle a croisé un voisin."
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And game speed is paused
    When I take a screenshot "gallery-1-the-letter-with-the-mod"
    Then no errors were logged

  @timeout:240
  Scenario: the same letter as the game alone writes it
    Given French Grammar Renew: the aspirated setting is turned off
    And French Grammar Renew: the possessive setting is turned off
    And French Grammar Renew: the richtext setting is turned off
    When French Grammar Renew: a letter titled "Le soir au salon de thé" is opened with the text "Le soir tombe sur le Sanctuaire. Nelim nourrit le husky et prépare un plat de haricots.\u000A\u000AElle range sa épée près de sa hache, puis polit la <color=#D09B61FF>épée</color> de son père.\u000A\u000AEn rentrant de <color=#D09B61FF>Éclat</color>, la vieille forge, elle a croisé un voisin."
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And game speed is paused
    When I take a screenshot "gallery-2-the-same-letter-without-the-mod"
    Then no errors were logged
