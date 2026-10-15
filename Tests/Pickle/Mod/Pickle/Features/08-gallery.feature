# Gallery of the Workshop page (AUDIT.md 9, GALLERY.md). Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French,
# and is left out of every other pass by name. A green run proves nothing about an image: each one is opened and read.
#
# THE STORY: an evening at the tea house (the hut, by the water). Nelim writes down her day, and the game turns it into a
# letter. The same letter is shown twice: first as the game writes it with this mod, then as the game alone writes it (the four
# corrections switched off). The difference is the whole mod: l'husky / le husky, d'haricots / de haricots, sa épée / son épée,
# and the two words in gold that the engine's own rules stop in front of.
#
# SHOT PLAN (GALLERY.md, full-screen window): place window-backdrop-for-height (bamboo backdrop), subject = the open letter alone,
# no learning helper, text long enough to fill the window; each image cropped sideways to the window (5 px each side).
# 1 = with the mod, 2 = the same letter without the four corrections: the difference reads in the text.
#
# The letter text is what the game's grammar produces BEFORE its post-processing (le husky, de haricots, sa épée, la <tag>épée,
# de <tag>Éclat): the engine builds it, the running worker corrects it or not, and the dialog the game draws is photographed.
@review @requires:nelim.pickletools.screenshotmode
Feature: the gallery images of French Grammar Renew

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And French Grammar Renew: the settings are at their documented defaults
    And Nelim's Sanctuary: I am at the sanctuary "window-backdrop-for-height"
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Sanctuary: Nelim has her own face

  @timeout:240
  Scenario: the letter as the game writes it with the mod
    When French Grammar Renew: a letter titled "Le soir au salon de thé" is opened with the text "Le soir tombe sur le Sanctuaire. Nelim nourrit le husky et prépare un plat de haricots.\u000A\u000AElle range sa épée près de sa hache, puis polit la <color=#D09B61FF>épée</color> de son père.\u000A\u000AEn rentrant de <color=#D09B61FF>Éclat</color>, la vieille forge, elle a croisé un voisin.\u000A\u000AIl lui a parlé du husky du forgeron, qui garde la porte de <color=#D09B61FF>Éclat</color> depuis l'hiver.\u000A\u000AElle a promis un sac de haricots pour le husky, et une soirée de thé au retour.\u000A\u000ASa épée repose maintenant près de la lampe ; la épée de son père brille au mur.\u000A\u000ALe husky suit Nelim jusqu'à la hutte, puis se couche près de la porte.\u000A\u000AElle prépare un bol de haricots et le pose devant le husky.\u000A\u000ASa épée, rangée trop vite, glisse du râtelier ; elle la remet en place.\u000A\u000AAu loin, la forge de <color=#D09B61FF>Éclat</color> s'éteint doucement.\u000A\u000AElle pense à la <color=#D09B61FF>épée</color> de son père, et à sa épée à elle.\u000A\u000ALe thé refroidit ; le husky dort, et le Sanctuaire aussi."
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And game speed is paused
    When I take a screenshot "gallery-1-the-letter-with-the-mod"
    Then no errors were logged

  @timeout:240
  Scenario: the same letter as the game alone writes it
    Given French Grammar Renew: the aspirated setting is turned off
    And French Grammar Renew: the possessive setting is turned off
    And French Grammar Renew: the richtext setting is turned off
    When French Grammar Renew: a letter titled "Le soir au salon de thé" is opened with the text "Le soir tombe sur le Sanctuaire. Nelim nourrit le husky et prépare un plat de haricots.\u000A\u000AElle range sa épée près de sa hache, puis polit la <color=#D09B61FF>épée</color> de son père.\u000A\u000AEn rentrant de <color=#D09B61FF>Éclat</color>, la vieille forge, elle a croisé un voisin.\u000A\u000AIl lui a parlé du husky du forgeron, qui garde la porte de <color=#D09B61FF>Éclat</color> depuis l'hiver.\u000A\u000AElle a promis un sac de haricots pour le husky, et une soirée de thé au retour.\u000A\u000ASa épée repose maintenant près de la lampe ; la épée de son père brille au mur.\u000A\u000ALe husky suit Nelim jusqu'à la hutte, puis se couche près de la porte.\u000A\u000AElle prépare un bol de haricots et le pose devant le husky.\u000A\u000ASa épée, rangée trop vite, glisse du râtelier ; elle la remet en place.\u000A\u000AAu loin, la forge de <color=#D09B61FF>Éclat</color> s'éteint doucement.\u000A\u000AElle pense à la <color=#D09B61FF>épée</color> de son père, et à sa épée à elle.\u000A\u000ALe thé refroidit ; le husky dort, et le Sanctuaire aussi."
    And Nelim's Pickle Tools: developer mode is turned off for the capture
    And game speed is paused
    When I take a screenshot "gallery-2-the-same-letter-without-the-mod"
    Then no errors were logged
