# Gallery of the Workshop page (AUDIT.md 9, GALLERY.md). Plays in the SANCTUARY pass only (wsl-deps.sanctuary.map), French,
# and is left out of every other pass by name. A green run proves nothing about an image: each one is opened and read.
#
# THE STORY: one evening in Nelim's life, told by the letter itself. A full-screen game window is a screen capture, not a staged
# photo (GALLERY.md: windows are taken on window-backdrop-for-height and cropped sideways to the window), so the story lives in the
# text: Nelim feeds the husky, polishes her father's sword, comes back from the old forge Eclat, and ends the day with tea. The same
# letter is shown twice, the game as it writes it with this mod, then the game alone (the three settings switched off). The
# difference is the whole mod: l'husky / le husky, d'haricots / de haricots, sa épée / son épée, and the two words in gold that the
# engine's own rules stop in front of (d'Éclat / de Éclat, l'épée / la épée).
#
# SHOT PLAN (one line per image, GALLERY.md):
# 1. place window-backdrop-for-height, noon, subject the open letter, bamboo and the river behind it, no learning helper, text long
#    enough to fill the window; says: the game writes elision and possessives the French way (le husky, de haricots, son épée, d'Éclat).
# 2. same place, same hour, same letter with the mod's three corrections off; says: this is what the game alone writes (l'husky,
#    d'haricots, sa épée, de Éclat). Each image cropped sideways to the window (5 px each side).
# No living subject and no waiting: nothing in a modal letter shows them, and Nelim is already the author of the text.
#

# The letter text is what the game's grammar produces BEFORE its post-processing (le husky, de haricots, sa épée, la <tag>épée,
# de <tag>Éclat): the engine builds it, the running worker corrects it or not, and the dialog the game draws is photographed.
@review @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio
Feature: the gallery images of French Grammar Renew

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And French Grammar Renew: the settings are at their documented defaults
    And Nelim's Sanctuary: I am at the sanctuary "window-backdrop-for-height"
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
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
