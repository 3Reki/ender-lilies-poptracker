--[ Logic was generated from DataExtractor script, see https://github.com/3Reki/EnderLilies.Archipelago/tree/PoptrackerExporter ]--

function LEDGE3()
  return has("djump") and has("silva") and has("verboten")
end

function LEDGE3_A()
  if has("djump") and has("silva") and has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function LEDGE2()
  return has("djump") and has("silva") or has("djump") and has("verboten") or has("silva") and has("verboten")
end

function LEDGE2_A()
  if has("djump") and has("silva") or has("djump") and has("verboten") or has("silva") and has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function LEDGE()
  return has("djump") or has("silva") or has("verboten")
end

function LEDGE_A()
  if has("djump") or has("silva") or has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HORIZONTAL2()
  return has("dodge2") and has("sinner")
end

function HORIZONTAL2_A()
  if has("dodge2") and has("sinner") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HORIZONTAL()
  return has("dodge2") or has("sinner")
end

function HORIZONTAL_A()
  if has("dodge2") or has("sinner") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function FULLSILVA()
  return has("silva") and has("djump") and has("dodge2")
end

function FULLSILVA_A()
  if has("silva") and has("djump") and has("dodge2") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function CHARGE()
  return has("lance") and has("dash")
end

function CHARGE_A()
  if has("lance") and has("dash") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HEAL3()
  return has("statue") and has("doll") and has("earrings")
end

function HEAL3_A()
  if has("statue") and has("doll") and has("earrings") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function Abyss01SilvasBloodstainedNoteI()
  return getLocAccess("@Abyss/01/Top")
end

function Abyss01FuriousBlightx100()
  return getLocAccess("@Abyss/01/Bottom")
end

function Abyss01Top()
  return math.max(getAccess("@Swamp/18/Bottom"), math.min(getAccess("@Swamp/18/Faden"), getAccess("unlock")))
end

function Abyss01Bottom()
  return math.max(getAccess("@Abyss/02/Top"), getAccess("@Abyss/02/Right"))
end

function Abyss02AmuletFragment()
  return math.min(getAccess("@Abyss/02/Top"), getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE2_A(), HORIZONTAL_A()), math.min(HORIZONTAL2_A(), LEDGE_A()), math.min(getAccess("dodge2"), getAccess("dash"), LEDGE_A())))
end

function Abyss02SilvasBloodstainedNoteII()
  return getLocAccess("@Abyss/02/Top")
end

function Abyss02FretiasMemoirsV()
  return getLocAccess("@Abyss/02/Top")
end

function Abyss02WhitePriestessEarrings()
  return getLocAccess("@Abyss/02/Top")
end

function Abyss02Right()
  return getLocAccess("@Abyss/03/Left")
end

function Abyss02Top()
  return math.max(getAccess("@Abyss/01/Bottom"), math.min(getAccess("@Abyss/01/Top"), CHARGE_A(), getAccess("hammer"), getAccess("aquatic"), math.max(math.min(HORIZONTAL2_A(), LEDGE_A()), FULLSILVA_A(), LEDGE3_A(), math.min(getAccess("silva"), math.max(getAccess("dodge2"), getAccess("djump"))), math.min(getAccess("verboten"), getAccess("djump")), math.min(getAccess("claws"), HORIZONTAL_A(), LEDGE_A())), math.max(getAccess("hook"), FULLSILVA_A(), LEDGE3_A(), math.min(HORIZONTAL2_A(), LEDGE_A()))))
end

function Abyss03Left()
  return math.max(getAccess("@Abyss/02/Right"), getAccess("@Abyss/02/Top"))
end

function Abyss04StagnantBlightx100()
  return math.min(getAccess("@Abyss/04/Top"), getAccess("heretic"), getAccess("claws"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash"))
end

function Abyss04StagnantBlightx100_1()
  return math.min(getAccess("@Abyss/04/Top"), getAccess("heretic"), getAccess("claws"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash"))
end

function Abyss04Top()
  return math.max(getAccess("@Swamp/12/Bottom"), math.min(getAccess("@Swamp/12/Lab4"), getAccess("hammer"), getAccess("unlock")))
end

function Abyss04Bottom()
  return getLocAccess("@Abyss/05/Top")
end

function Abyss05DomainStoneTabletFragment()
  return math.min(getAccess("@Abyss/05/Top"), getAccess("aquatic"))
end

function Abyss05TheDeathlessPact()
  return math.min(getAccess("@Abyss/05/Top"), getAccess("aquatic"))
end

function Abyss05Teleport()
  return math.min(getAccess("@Abyss/05/Top"), getAccess("aquatic"))
end

function Abyss05AncientSoulx2()
  return math.min(getAccess("@Abyss/05/Top"), getAccess("aquatic"))
end

function Abyss05Top()
  return math.max(getAccess("@Abyss/04/Bottom"), math.min(getAccess("@Abyss/04/Top"), getAccess("heretic"), getAccess("claws"), getAccess("aquatic"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash")))
end

function Castle01CastleTownMaidenFight()
  return math.max(getAccess("@Castle/01/Left"), getAccess("@Castle/01/Right1"), getAccess("@Castle/01/Top"), getAccess("@Castle/01/Right2"))
end

function Castle01PriestessDoll()
  return math.min(getAccess("@Castle/01/Dog"), math.max(LEDGE_A(), HORIZONTAL_A()))
end

function Castle01DecayedCrown()
  return math.max(getAccess("@Castle/01/Right1"), getAccess("@Castle/01/Top"))
end

function Castle01StagnantBlightx100()
  return math.min(getAccess("@Castle/01/Dog"), CHARGE_A())
end

function Castle01FuriousBlightx100()
  return math.min(getAccess("@Castle/01/Dog"), CHARGE_A())
end

function Castle01Left()
  return math.max(getAccess("@Village/11/Right"), math.min(getAccess("@Village/11/Left"), getAccess("claws")))
end

function Castle01Right2()
  return math.max(getAccess("@Castle/02/Left2"), getAccess("@Castle/02/Left1"), getAccess("@Castle/02/Top"), getAccess("@Castle/02/Bottom"))
end

function Castle01Right1()
  return math.max(getAccess("@Castle/02/Left1"), math.min(getAccess("@Castle/02/Left2"), math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten")))))
end

function Castle01Top()
  return getLocAccess("@Castle/10/MaelstromRemparts")
end

function Castle02AmuletFragment()
  return math.min(getAccess("@Castle/02/Top"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"), getAccess("claws"), getAccess("hook")))
end

function Castle02Top()
  return math.max(getAccess("@Castle/05/Bottom"), getAccess("@Castle/05/Right"), getAccess("@Castle/05/Left"), getAccess("@Castle/05/Top"))
end

function Castle02StagnantBlightx30()
  return math.min(getAccess("@Castle/02/Top"), getAccess("hook"))
end

function Castle02Left2()
  return math.max(getAccess("@Castle/01/Right2"), math.min(getAccess("@Castle/01/Dog"), math.max(HORIZONTAL_A(), LEDGE_A(), getAccess("dash"))))
end

function Castle02Bottom()
  return math.max(getAccess("@Castle/04/Top"), math.min(getAccess("@Castle/04/RuinedCastleCellar"), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A())))
end

function Castle02Left1()
  return math.max(getAccess("@Castle/01/Right1"), getAccess("@Castle/01/Top"))
end

function Castle03AmuletFragment()
  return math.min(math.max(getAccess("@Castle/03/Top1"), getAccess("@Castle/03/Top2")), math.max(getAccess("hook"), getAccess("claws"), HORIZONTAL_A(), getAccess("dash"), LEDGE_A()))
end

function Castle03StagnantBlightx30()
  return math.min(math.max(getAccess("@Castle/03/Top1"), getAccess("@Castle/03/Top2")), math.max(getAccess("hook"), getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Castle03Bottom()
  return getLocAccess("@Castle/05/Top")
end

function Castle03Top1()
  return math.max(getAccess("@Castle/11/Bottom1"), getAccess("@Castle/11/Left"))
end

function Castle03Top2()
  return math.max(getAccess("@Castle/11/Bottom2"), getAccess("@Castle/11/Right"))
end

function Castle04ReportfromaVerbotenMage()
  return math.max(getAccess("@Castle/04/RuinedCastleCellar"), getAccess("@Castle/04/Top"))
end

function Castle04Top()
  return math.max(getAccess("@Castle/02/Bottom"), getAccess("@Castle/02/Left2"))
end

function Castle05Bottom()
  return math.max(getAccess("@Castle/02/Top"), math.min(getAccess("@Castle/02/Left2"), math.max(getAccess("hook"), LEDGE_A(), getAccess("claws"))))
end

function Castle05Right()
  return math.max(getAccess("@Castle/06/Left"), getAccess("@Castle/06/Top"))
end

function Castle05Left()
  return math.max(getAccess("@Castle/08/Right"), getAccess("@Castle/08/Top"))
end

function Castle05Top()
  return math.max(getAccess("@Castle/03/Bottom"), getAccess("@Castle/03/Top1"), getAccess("@Castle/03/Top2"))
end

function Castle06RoyalAegisCrest()
  return getLocAccess("@Castle/06/Top")
end

function Castle06Top()
  return math.max(getAccess("@Castle/12/Bottom"), math.min(getAccess("@Castle/12/Left"), math.max(math.min(getAccess("hook"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())), getAccess("hammer"))))
end

function Castle06Right()
  return math.max(getAccess("@Castle/07/Left"), getAccess("@Castle/07/GuestChamber"))
end

function Castle06StagnantBlightx30()
  return math.min(getAccess("@Castle/06/Right"), getAccess("claws"))
end

function Castle06Left()
  return math.max(getAccess("@Castle/05/Right"), getAccess("@Castle/05/Bottom"))
end

function Castle07ProofofFounding()
  return math.max(getAccess("@Castle/07/GuestChamber"), getAccess("@Castle/07/Right"), getAccess("@Castle/07/Left"))
end

function Castle07Right()
  return math.max(getAccess("@Fort/01/Left1"), math.min(getAccess("@Fort/01/Sentinel"), getAccess("hook")))
end

function Castle07Left()
  return math.max(getAccess("@Castle/06/Right"), getAccess("@Castle/06/Top"), getAccess("@Castle/06/Left"))
end

function Castle08ChainofSorcery()
  return math.min(getAccess("@Castle/08/Top"), getAccess("claws"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Castle08BlightwreathedBlade()
  return getLocAccess("@Castle/08/Top")
end

function Castle08StagnantBlightx10()
  return getLocAccess("@Castle/08/Top")
end

function Castle08StagnantBlightx10_1()
  return getLocAccess("@Castle/08/Top")
end

function Castle08StagnantBlightx10_2()
  return getLocAccess("@Castle/08/Right")
end

function Castle08Right()
  return math.max(getAccess("@Castle/05/Left"), getAccess("@Castle/05/Bottom"))
end

function Castle08Top()
  return math.max(getAccess("@Castle/09/Bottom"), getAccess("@Castle/09/Right"), getAccess("@Castle/09/Left"))
end

function Castle09FuriousBlightx30()
  return math.min(getAccess("@Castle/09/Left"), math.max(HORIZONTAL2_A(), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))), FULLSILVA_A(), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("djump"), getAccess("dash"), math.max(getAccess("silva"), getAccess("dodge2")))))
end

function Castle09Right()
  return math.max(getAccess("@Castle/11/Left"), getAccess("@Castle/11/Bottom1"))
end

function Castle09Bottom()
  return math.max(getAccess("@Castle/08/Top"), math.min(getAccess("@Castle/08/Right"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())))
end

function Castle09Left()
  return getLocAccess("@Castle/10/MaelstromRemparts")
end

function Castle10JuliusBook()
  return math.max(getAccess("@Castle/10/MaelstromRemparts"), getAccess("@Castle/10/Right"), getAccess("@Castle/10/Bottom"))
end

function Castle10StagnantBlightx30()
  return getLocAccess("@Castle/10/MaelstromRemparts")
end

function Castle10Right()
  return math.max(getAccess("@Castle/09/Left"), getAccess("@Castle/09/Bottom"))
end

function Castle10Bottom()
  return math.min(getAccess("@Castle/01/Right1"), getAccess("claws"))
end

function Castle11Right()
  return math.max(getAccess("@Castle/12/Left"), getAccess("@Castle/12/Bottom"))
end

function Castle11Left()
  return math.max(getAccess("@Castle/09/Right"), getAccess("@Castle/09/Bottom"))
end

function Castle11Top()
  return math.max(getAccess("@Castle/13/Bottom"), getAccess("@Castle/13/Left"), getAccess("@Castle/13/Right"))
end

function Castle11Bottom1()
  return math.max(math.min(getAccess("@Castle/03/Top1"), getAccess("claws")), math.min(getAccess("@Castle/03/Top2"), getAccess("claws"), HORIZONTAL_A(), LEDGE2_A()), math.min(getAccess("@Castle/03/Bottom"), getAccess("claws"), math.max(math.min(HORIZONTAL2_A(), LEDGE2_A()), math.min(HORIZONTAL_A(), LEDGE3_A()))))
end

function Castle11Bottom2()
  return math.max(math.min(getAccess("@Castle/03/Top2"), getAccess("claws")), math.min(getAccess("@Castle/03/Top1"), getAccess("claws"), HORIZONTAL_A(), LEDGE2_A()), math.min(getAccess("@Castle/03/Bottom"), getAccess("claws"), math.max(math.min(HORIZONTAL2_A(), LEDGE2_A()), math.min(HORIZONTAL_A(), LEDGE3_A()))))
end

function Castle12ChainofSorcery()
  return math.min(getAccess("@Castle/12/Bottom"), math.max(getAccess("hook"), math.min(LEDGE3_A(), getAccess("claws"), getAccess("dodge2"))))
end

function Castle12KingoftheFirstAgesDiaryI()
  return getLocAccess("@Castle/12/Bottom")
end

function Castle12KingoftheFirstAgesDiaryII()
  return getLocAccess("@Castle/12/Bottom")
end

function Castle12Bottom()
  return math.max(getAccess("@Castle/06/Top"), getAccess("@Castle/06/Right"))
end

function Castle12StagnantBlightx30()
  return math.min(getAccess("@Castle/12/Bottom"), math.max(getAccess("hook"), getAccess("claws"), HORIZONTAL_A()))
end

function Castle12Left()
  return math.max(getAccess("@Castle/11/Right"), getAccess("@Castle/11/Bottom2"))
end

function Castle12Right()
  return getLocAccess("@Castle/21/Left")
end

function Castle13AmuletGem()
  return math.min(getAccess("@Castle/13/Bottom"), math.max(math.min(getAccess("silva"), getAccess("djump"), getAccess("claws")), math.min(math.max(FULLSILVA_A(), LEDGE3_A()), getAccess("hook")), math.min(LEDGE2_A(), getAccess("hook"), getAccess("claws")), math.min(LEDGE_A(), HORIZONTAL_A(), getAccess("claws"), getAccess("hook"))))
end

function Castle13Left()
  return getLocAccess("@Castle/17/Right")
end

function Castle13Bottom()
  return math.max(getAccess("@Castle/11/Top"), math.min(getAccess("@Castle/11/Left"), getAccess("@Castle/11/Right"), LEDGE_A()))
end

function Castle13Right()
  return math.max(getAccess("@Castle/14/Left"), getAccess("@Castle/14/Top"))
end

function Castle14AmuletFragment()
  return math.min(getAccess("@Castle/14/Left"), getAccess("hook"))
end

function Castle14StagnantBlightx100()
  return math.min(getAccess("@Castle/14/Left"), CHARGE_A(), math.max(getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Castle14FuriousBlightx800()
  return math.min(getAccess("@Castle/14/Left"), math.min(getAccess("claws"), math.max(LEDGE3_A(), FULLSILVA_A(), math.min(getAccess("sinner"), LEDGE2_A()), math.min(getAccess("silva"), HORIZONTAL2_A()), math.min(getAccess("dodge2"), getAccess("dash"), LEDGE2_A()))))
end

function Castle14Left()
  return math.max(getAccess("@Castle/13/Right"), getAccess("@Castle/13/Bottom"))
end

function Castle14Top()
  return getLocAccess("@Castle/15/TowerAlcove")
end

function Castle15PriestessWish()
  return getLocAccess("@Castle/15/TowerAlcove")
end

function Castle15PriestessCastleMemo()
  return math.max(getAccess("@Castle/15/Bottom"), getAccess("@Castle/15/Left"))
end

function Castle15Left()
  return math.min(getAccess("@Castle/16/Aegis"), math.max(LEDGE2_A(), getAccess("claws")))
end

function Castle15Bottom()
  return math.max(getAccess("@Castle/14/Top"), math.min(getAccess("@Castle/14/Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Castle16OneEyedRoyalAegisFight()
  return getLocAccess("@Castle/16/Right")
end

function Castle16StagnantBlightx102nd()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx105th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx109th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx101st()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx108th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx103rd()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx107th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx106th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx104th()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16StagnantBlightx10()
  return math.min(getAccess("@Castle/16/Aegis"), getAccess("claws"))
end

function Castle16BottomLeft()
  return getLocAccess("@Castle/16/Aegis")
end

function Castle16Right()
  return math.min(getAccess("@Castle/15/TowerAlcove"), getAccess("claws"), math.max(getAccess("hook"), math.min(FULLSILVA_A(), getAccess("sinner")), LEDGE3_A()))
end

function Castle17StagnantBlightx30()
  return math.min(getAccess("@Castle/17/Right"), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A()))
end

function Castle17Right()
  return math.max(getAccess("@Castle/13/Left"), getAccess("@Castle/13/Bottom"))
end

function Castle17Top()
  return math.max(getAccess("@Castle/18/Bottom"), math.min(getAccess("@Castle/18/Right"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A()))), getAccess("@Castle/18/Top"))
end

function Castle18AmuletFragment()
  return math.min(getAccess("@Castle/18/Right"), CHARGE_A())
end

function Castle18KingsNoteII()
  return math.min(getAccess("@Castle/18/Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A())), CHARGE_A())
end

function Castle18EldredsRing()
  return math.min(getAccess("@Castle/18/Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A())), CHARGE_A())
end

function Castle18FuriousBlightx100()
  return math.min(getAccess("@Castle/18/Bottom"), getAccess("hook"), LEDGE_A(), CHARGE_A())
end

function Castle18Right()
  return getLocAccess("@Castle/19/KingsChamber")
end

function Castle18Bottom()
  return math.max(getAccess("@Castle/17/Top"), math.min(getAccess("@Castle/17/Right"), LEDGE_A()))
end

function Castle19KingsNoteI()
  return math.max(getAccess("@Castle/19/Right"), getAccess("@Castle/19/Left"))
end

function Castle19Right()
  return getLocAccess("@Castle/20/Left")
end

function Castle19Left()
  return math.max(getAccess("@Castle/18/Right"), math.min(getAccess("@Castle/18/Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A()))))
end

function Castle20KnightCaptainJuliusFight()
  return getLocAccess("@Castle/20/Left")
end

function Castle20Left()
  return getLocAccess("@Castle/19/KingsChamber")
end

function Castle21KingoftheFirstAgesDiaryIII()
  return getLocAccess("@Castle/21/Left")
end

function Castle21CastleStoneTabletFragment()
  return getLocAccess("@Castle/21/Left")
end

function Castle21Left()
  return math.max(getAccess("@Castle/12/Right"), math.min(getAccess("@Castle/12/Bottom"), getAccess("unlock")))
end

function Castle21StagnantBlightx100()
  return getLocAccess("@Castle/21/Left")
end

function CathedralCloister()
  return math.max(getAccess("@Church/05/CathedralCloister"), getAccess("@Church/05/Right"), getAccess("@Church/05/Bottom"), getAccess("@Church/05/Top"))
end

function Cave01FretiasRing()
  return math.max(getAccess("@Cave/01/BottomOfTheWell"), getAccess("@Cave/01/Bottom"), getAccess("@Cave/01/Left"))
end

function Cave01FuriousBlightx800()
  return math.max(math.min(getAccess("@Cave/01/Bottom"), math.max(getAccess("claws"), getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))), math.min(getAccess("@Cave/01/Left"), LEDGE3_A(), HORIZONTAL2_A()))
end

function Cave01Bottom()
  return math.min(getAccess("@Cave/02/Right"), getAccess("claws"), math.max(math.min(FULLSILVA_A(), getAccess("dash")), LEDGE3_A(), math.min(LEDGE2_A(), HORIZONTAL2_A()), math.min(getAccess("silva"), HORIZONTAL2_A()), math.min(getAccess("silva"), getAccess("sinner"), getAccess("djump")), math.min(getAccess("dash"), getAccess("djump"), getAccess("verboten"), getAccess("sinner"))))
end

function Cave01Left()
  return math.max(getAccess("@Village/12/Right"), math.min(getAccess("@Village/12/Left1"), getAccess("@Village/12/Top"), getAccess("aquatic")))
end

function Cave02StagnantBlightx30()
  return math.min(getAccess("@Cave/02/Right"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(HORIZONTAL_A(), math.min(LEDGE_A(), getAccess("dash"))))))
end

function Cave02StagnantBlightx10()
  return getLocAccess("@Cave/02/Right")
end

function Cave02Right()
  return math.max(getAccess("@Cave/05/Left"), getAccess("@Cave/05/Bottom"))
end

function Cave02Bottom()
  return math.min(getAccess("@Cave/07/Spider"), getAccess("claws"), getAccess("hook"), math.max(FULLSILVA_A(), LEDGE3_A()))
end

function Cave02Top()
  return getLocAccess("@Cave/01/BottomOfTheWell")
end

function Cave03DefenseoftheTwinSpiresII()
  return math.max(getAccess("@Cave/03/Charnel"), getAccess("@Cave/03/Left"), getAccess("@Cave/03/Right"), getAccess("@Cave/03/Top"))
end

function Cave03FretiasMemoirsIV()
  return getLocAccess("@Cave/03/Right")
end

function Cave03Left()
  return getLocAccess("@Cave/07/Spider")
end

function Cave03Right()
  return math.max(getAccess("@Cave/08/Left"), getAccess("@Cave/08/Top"), getAccess("@Cave/08/Right"))
end

function Cave03Top()
  return math.max(getAccess("@Cave/06/Bottom"), getAccess("@Cave/06/Top"))
end

function Cave04AmuletFragment()
  return getLocAccess("@Cave/04/Bottom")
end

function Cave04Right()
  return math.max(getAccess("@Cave/16/Left"), getAccess("@Cave/16/GreatHall"))
end

function Cave04Bottom()
  return math.max(getAccess("@Cave/05/Top"), getAccess("@Cave/05/Bottom"))
end

function Cave04Left()
  return getLocAccess("@Cave/12/Right")
end

function Cave05FuriousBlightx10()
  return math.min(getAccess("@Cave/05/Bottom"), math.max(getAccess("hook"), LEDGE_A(), getAccess("dash"), HORIZONTAL_A()))
end

function Cave05Left()
  return math.max(getAccess("@Cave/02/Right"), getAccess("@Cave/02/Bottom"), getAccess("@Cave/02/Top"))
end

function Cave05Top()
  return math.max(getAccess("@Cave/04/Bottom"), getAccess("@Cave/04/Right"))
end

function Cave05Bottom()
  return math.max(getAccess("@Cave/06/Top"), getAccess("@Cave/06/Bottom"))
end

function Cave05Right()
  return math.max(getAccess("@Cave/10/Left"), math.min(getAccess("@Cave/10/Bottom"), math.max(getAccess("hook"), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), math.min(getAccess("sinner"), getAccess("dash")))))
end

function Cave06FretiasMemoirsII()
  return getLocAccess("@Cave/06/Top")
end

function Cave06FretiasMemoirsI()
  return getLocAccess("@Cave/06/Top")
end

function Cave06KilteusRing()
  return getLocAccess("@Cave/06/Top")
end

function Cave06Top()
  return math.max(getAccess("@Cave/05/Bottom"), getAccess("@Cave/05/Left"), getAccess("@Cave/05/Right"), getAccess("@Cave/05/Top"))
end

function Cave06Bottom()
  return getLocAccess("@Cave/03/Charnel")
end

function Cave07ElderCryptKeeperFight()
  return math.max(getAccess("@Cave/07/Right"), getAccess("@Cave/07/Top"))
end

function Cave07StagnantBlightx10()
  return math.min(getAccess("@Cave/07/Spider"), getAccess("aquatic"))
end

function Cave07Top()
  return math.max(getAccess("@Cave/02/Bottom"), math.min(getAccess("@Cave/02/Right"), getAccess("hammer")))
end

function Cave07Right()
  return getLocAccess("@Cave/03/Left")
end

function Cave08AmuletFragment()
  return math.min(getAccess("@Cave/08/Left"), getAccess("hammer"))
end

function Cave08Top()
  return math.max(getAccess("@Cave/09/Bottom"), getAccess("@Cave/09/Top"), getAccess("@Cave/09/Right"))
end

function Cave08Left()
  return getLocAccess("@Cave/03/Right")
end

function Cave08Bottom()
  return getLocAccess("@Cave/17/Top")
end

function Cave08Right()
  return math.max(getAccess("@Cave/11/Left"), math.min(getAccess("@Cave/11/Cave11Tip"), math.max(getAccess("hook"), HORIZONTAL_A(), LEDGE_A(), getAccess("claws"))))
end

function Cave09AmuletFragment()
  return math.min(getAccess("@Cave/09/Top"), math.max(getAccess("claws"), LEDGE_A()))
end

function Cave09ChainofSorcery()
  return getLocAccess("@Cave/09/Top")
end

function Cave09Top()
  return math.max(getAccess("@Cave/10/Bottom"), getAccess("@Cave/10/Right"), getAccess("@Cave/10/Top"), getAccess("@Cave/10/Left"))
end

function Cave09Bottom()
  return math.max(getAccess("@Cave/08/Top"), math.min(getAccess("@Cave/08/Left"), math.max(getAccess("hook"), LEDGE_A(), getAccess("dash"), HORIZONTAL_A())))
end

function Cave09Right()
  return math.max(getAccess("@Cave/21/Left"), getAccess("@Cave/21/Right"))
end

function Cave10AmuletFragment()
  return getLocAccess("@Cave/10/Left")
end

function Cave10StagnantBlightx10()
  return getLocAccess("@Cave/10/Bottom")
end

function Cave10Right()
  return getLocAccess("@Cave/23/Silva")
end

function Cave10Left()
  return math.max(getAccess("@Cave/05/Right"), math.min(getAccess("@Cave/05/Bottom"), math.max(getAccess("claws"), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave10Bottom()
  return math.max(getAccess("@Cave/09/Top"), math.min(getAccess("@Cave/09/Bottom"), math.max(getAccess("claws"), LEDGE_A())))
end

function Cave10Top()
  return getLocAccess("@Cave/16/Bottom")
end

function Cave11SilvasNoteII()
  return math.max(getAccess("@Cave/11/Left"), getAccess("@Cave/11/Top"), getAccess("@Cave/11/Right1"), getAccess("@Cave/11/Right2"))
end

function Cave11StagnantBlightx10()
  return math.min(getAccess("@Cave/11/Left"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash")))
end

function Cave11FuriousBlightx10()
  return math.min(getAccess("@Cave/11/Cave11Tip"), getAccess("aquatic"))
end

function Cave11Left()
  return math.max(getAccess("@Cave/08/Right"), getAccess("@Cave/08/Left"))
end

function Cave11Top()
  return getLocAccess("@Cave/13/Ossuary")
end

function Cave11Right1()
  return getLocAccess("@Cave/18/Left1")
end

function Cave12CatacombsStoneTabletFragment()
  return math.min(getAccess("@Cave/12/Right"), math.max(getAccess("verboten"), getAccess("silva")))
end

function Cave12Right()
  return math.max(getAccess("@Cave/04/Left"), math.min(getAccess("@Cave/04/Bottom"), getAccess("unlock")))
end

function Cave13SilvasNoteI()
  return math.max(getAccess("@Cave/13/Ossuary"), getAccess("@Cave/13/Top"), getAccess("@Cave/13/Left"), getAccess("@Cave/13/Right"), getAccess("@Cave/13/Bottom"))
end

function Cave13FuriousBlightx30()
  return math.max(math.min(getAccess("@Cave/13/Ossuary"), getAccess("hook")), math.min(getAccess("@Cave/13/Bottom"), getAccess("claws")))
end

function Cave13FuriousBlightx10()
  return math.min(getAccess("@Cave/13/Left"), math.max(getAccess("dash"), LEDGE_A(), HORIZONTAL_A()))
end

function Cave13Bottom()
  return math.min(getAccess("@Cave/11/Cave11Tip"), getAccess("claws"))
end

function Cave13Top()
  return math.max(getAccess("@Cave/14/Bottom"), getAccess("@Cave/14/Right"), getAccess("@Cave/14/Left"))
end

function Cave13Left()
  return getLocAccess("@Cave/23/Silva")
end

function Cave13Right()
  return math.max(getAccess("@Cave/20/Left"), getAccess("@Cave/20/Bottom"), getAccess("@Cave/20/Top"))
end

function Cave14StagnantBlightx10()
  return getLocAccess("@Cave/14/Right")
end

function Cave14Bottom()
  return getLocAccess("@Cave/13/Ossuary")
end

function Cave14Left()
  return math.max(getAccess("@Cave/15/Right"), math.min(getAccess("@Cave/15/Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Cave14Right()
  return math.max(getAccess("@Cave/22/Left"), math.min(getAccess("@Cave/22/Bottom"), math.max(LEDGE2_A(), getAccess("hook"), getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave15DefenseoftheTwinSpiresI()
  return getLocAccess("@Cave/15/Right")
end

function Cave15StagnantBlightx10()
  return math.min(getAccess("@Cave/15/Right"), getAccess("hammer"))
end

function Cave15StagnantBlightx10_1()
  return math.max(getAccess("@Cave/15/Right"), getAccess("@Cave/15/Left"))
end

function Cave15Right()
  return math.max(getAccess("@Cave/14/Left"), math.min(getAccess("@Cave/14/Bottom"), LEDGE_A()))
end

function Cave15Left()
  return math.max(getAccess("@Cave/16/Right"), getAccess("@Cave/16/GreatHall"))
end

function Cave16TheNextWhitePriestess()
  return math.max(getAccess("@Cave/16/GreatHall"), getAccess("@Cave/16/Right"), getAccess("@Cave/16/Bottom"), getAccess("@Cave/16/Left"))
end

function Cave16StagnantBlightx30()
  return math.min(getAccess("@Cave/16/GreatHall"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A())))))
end

function Cave16Right()
  return math.max(getAccess("@Cave/15/Left"), getAccess("@Cave/15/Right"))
end

function Cave16Bottom()
  return math.max(getAccess("@Cave/10/Top"), getAccess("@Cave/10/Bottom"))
end

function Cave16Left()
  return math.max(getAccess("@Cave/04/Right"), getAccess("@Cave/04/Bottom"))
end

function Cave17AncientSoulx2()
  return math.min(getAccess("@Cave/17/Top"), getAccess("aquatic"))
end

function Cave17Top()
  return math.max(getAccess("@Cave/08/Bottom"), math.min(getAccess("@Cave/08/Left"), getAccess("aquatic"), getAccess("hammer")))
end

function Cave18HolySpringWater()
  return getLocAccess("@Cave/18/Left1")
end

function Cave18Left1()
  return math.max(getAccess("@Cave/11/Right1"), math.min(getAccess("@Cave/11/Cave11Tip"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE_A(), getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("dash")))), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave18Left2()
  return math.min(getAccess("@Cave/18/Left1"), getAccess("aquatic"))
end

function Cave19FallenArcherFight()
  return math.max(getAccess("@Cave/19/Top"), getAccess("@Cave/19/Left"))
end

function Cave19PriestessWish()
  return getLocAccess("@Cave/19/Archer")
end

function Cave19ChainofSorcery()
  return math.min(getAccess("@Cave/19/Archer"), math.max(getAccess("hook"), LEDGE_A(), HORIZONTAL_A()))
end

function Cave19Top()
  return math.max(getAccess("@Cave/20/Bottom"), getAccess("@Cave/20/Left"), getAccess("@Cave/20/Top"))
end

function Cave19Left()
  return math.max(getAccess("@Cave/21/Right"), getAccess("@Cave/21/Left"))
end

function Cave20AmuletFragment()
  return getLocAccess("@Cave/20/Top")
end

function Cave20TheHeirloomofLandsEnd()
  return getLocAccess("@Cave/20/Top")
end

function Cave20StagnantBlightx10()
  return getLocAccess("@Cave/20/Top")
end

function Cave20Top()
  return math.max(getAccess("@Cave/22/Bottom"), getAccess("@Cave/22/Right"), getAccess("@Cave/22/Left"))
end

function Cave20Bottom()
  return math.max(getAccess("@Cave/19/Top"), getAccess("@Cave/19/Archer"))
end

function Cave20Left()
  return getLocAccess("@Cave/13/Ossuary")
end

function Cave21PriestessStatue()
  return math.max(getAccess("@Cave/21/Right"), getAccess("@Cave/21/Left"))
end

function Cave21Left()
  return math.max(getAccess("@Cave/09/Right"), math.min(getAccess("@Cave/09/Top"), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), math.max(LEDGE_A(), math.min(getAccess("dash"), getAccess("claws")))), math.min(getAccess("djump"), math.max(getAccess("verboten"), getAccess("silva"), getAccess("dash"))), math.min(getAccess("claws"), getAccess("verboten")))))
end

function Cave21Right()
  return math.max(getAccess("@Cave/19/Left"), math.min(getAccess("@Cave/19/Top"), math.max(math.min(HORIZONTAL_A(), LEDGE_A()), getAccess("claws"), LEDGE2_A())))
end

function Cave22FretiasMemoirsIII()
  return getLocAccess("@Cave/22/Right")
end

function Cave22Right()
  return math.max(getAccess("@Fort/02/Left"), math.min(getAccess("@Fort/02/Right"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), LEDGE2_A(), getAccess("sinner"), math.min(getAccess("dash"), LEDGE_A()), math.min(getAccess("dash"), getAccess("dodge2")))))
end

function Cave22Left()
  return math.max(getAccess("@Cave/14/Right"), math.min(getAccess("@Cave/14/Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave22Bottom()
  return math.max(getAccess("@Cave/20/Top"), math.min(getAccess("@Cave/20/Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE_A())))
end

function Cave23GuardianSilvaFight()
  return math.max(getAccess("@Cave/23/Right"), getAccess("@Cave/23/Left"))
end

function Cave23UnfinishedNote()
  return getLocAccess("@Cave/23/Silva")
end

function Cave23Right()
  return math.max(getAccess("@Cave/13/Left"), math.min(getAccess("@Cave/13/Ossuary"), math.max(getAccess("claws"), LEDGE2_A(), getAccess("sinner"), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave23Left()
  return math.max(getAccess("@Cave/10/Right"), getAccess("@Cave/10/Bottom"))
end

function Church01Bottom()
  return math.max(getAccess("@Church/02/Top"), math.min(getAccess("@Church/02/Right"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Church01Left()
  return math.max(getAccess("@Church/12/Right"), getAccess("@Church/12/Start"))
end

function Church02AmuletFragment()
  return getLocAccess("@Church/02/Right")
end

function Church02EleinesLetter()
  return getLocAccess("@Church/02/Right")
end

function Church02Top()
  return math.max(getAccess("@Church/01/Bottom"), getAccess("@Church/01/Left"), getAccess("@Church/01/Top"))
end

function Church02Right()
  return math.max(getAccess("@Church/10/Left"), getAccess("@Church/10/Cellar"))
end

function Church03defeatSiegrid()
  return getLocAccess("@Church/03/Left")
end

function Church03Left()
  return getLocAccess("@Church/05/CathedralCloister")
end

function Church03Right()
  return math.max(getAccess("@Church/04/Left"), getAccess("@Church/04/SaintsPassage"))
end

function Church04GroasLetter()
  return math.max(getAccess("@Church/04/SaintsPassage"), getAccess("@Church/04/Right"), getAccess("@Church/04/Left"))
end

function Church04Left()
  return math.max(getAccess("@Church/03/Right"), getAccess("@Church/03/Left"))
end

function Church04Right()
  return math.max(getAccess("@Church/06/Left"), getAccess("@Church/06/Right"))
end

function Church05SoiledPrayerBeads()
  return math.max(getAccess("@Church/05/Top"), math.min(getAccess("@Church/05/CathedralCloister"), LEDGE_A()))
end

function Church05Bottom()
  return math.max(getAccess("@Church/11/Top"), getAccess("@Church/11/Left"))
end

function Church05Right()
  return math.max(getAccess("@Church/03/Left"), getAccess("@Church/03/Right"))
end

function Church05Top()
  return math.max(getAccess("@Church/09/Bottom"), getAccess("@Church/09/Top"))
end

function Church06Left()
  return math.max(getAccess("@Church/04/Right"), getAccess("@Church/04/SaintsPassage"))
end

function Church06Right()
  return math.max(getAccess("@Church/07/Left"), math.min(getAccess("@Church/07/Youth"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church07CliffsideHamletYouthFight()
  return getLocAccess("@Church/07/Right")
end

function Church07ChainofSorcery()
  return math.min(getAccess("@Church/07/Youth"), getAccess("hammer"))
end

function Church07Left()
  return math.max(getAccess("@Church/06/Right"), math.min(getAccess("@Church/06/Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church07Right()
  return getLocAccess("@Church/08/Crossroads")
end

function Church08AmuletFragment()
  return math.min(getAccess("@Church/08/Crossroads"), getAccess("aquatic"))
end

function Church08TheParishWayII()
  return math.max(getAccess("@Church/08/Crossroads"), getAccess("@Church/08/Top"), getAccess("@Church/08/Bottom"), getAccess("@Church/08/Left"))
end

function Church08Top()
  return math.max(getAccess("@Village/01/Bottom"), getAccess("@Village/01/Right"))
end

function Church08Bottom()
  return math.max(getAccess("@Forest/01/Top"), math.min(getAccess("@Forest/01/Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church08Left()
  return math.max(getAccess("@Church/07/Right"), math.min(getAccess("@Church/07/Left"), math.max(LEDGE_A(), getAccess("claws"))), getAccess("@Church/07/Youth"))
end

function Church09ChiefGuardianFight()
  return math.max(getAccess("@Church/09/Bottom"), getAccess("@Church/09/Top"))
end

function Church09VibrantPlume()
  return math.min(getAccess("@Church/09/Bottom"), CHARGE_A(), math.max(math.min(LEDGE_A(), getAccess("claws")), LEDGE3_A()))
end

function Church09FuriousBlightx30()
  return getLocAccess("@Church/09/Chief")
end

function Church09Bottom()
  return math.min(getAccess("@Church/05/CathedralCloister"), getAccess("claws"))
end

function Church09Bottom2()
  return getLocAccess("@Church/09/Chief")
end

function Church09Top()
  return getLocAccess("@Church/14/Bottom")
end

function Church10OntheBlightedI()
  return math.max(getAccess("@Church/10/Cellar"), getAccess("@Church/10/Left"), getAccess("@Church/10/Right"))
end

function Church10OntheBlightedII()
  return getLocAccess("@Church/10/Cellar")
end

function Church10Left()
  return math.max(getAccess("@Church/02/Right"), getAccess("@Church/02/Top"))
end

function Church10Right()
  return getLocAccess("@Church/11/Left")
end

function Church11AmuletFragment()
  return getLocAccess("@Church/11/Left")
end

function Church11TheParishWayI()
  return getLocAccess("@Church/11/Top")
end

function Church11Top()
  return getLocAccess("@Church/05/CathedralCloister")
end

function Church11Left()
  return math.max(getAccess("@Church/10/Right"), getAccess("@Church/10/Cellar"))
end

function Church12StatueInscription()
  return math.max(getAccess("@Church/12/Start"), getAccess("@Church/12/Right"))
end

function Church12Right()
  return math.max(getAccess("@Church/01/Left"), getAccess("@Church/01/Bottom"), getAccess("@Church/01/Top"))
end

function Church12Bottom()
  return getLocAccess("@Church/13/Top")
end

function Church13RestoringtheAegisCurio()
  return getLocAccess("@Church/13/Top")
end

function Church13Top()
  return math.max(getAccess("@Church/12/Bottom"), math.min(getAccess("@Church/12/Start"), math.min(getAccess("unlock"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")), getAccess("claws")))))
end

function Church14PriestessWish()
  return getLocAccess("@Church/14/Bottom")
end

function Church14LilysNote()
  return getLocAccess("@Church/14/Bottom")
end

function Church14Bottom()
  return math.min(getAccess("@Church/09/Bottom"), getAccess("hook"))
end

function Forest01Top()
  return getLocAccess("@Church/08/Crossroads")
end

function Forest01Right()
  return math.max(getAccess("@Forest/02/Left"), getAccess("@Forest/02/Right1"))
end

function Forest02StagnantBlightx10()
  return math.max(getAccess("@Forest/02/Left"), math.min(getAccess("@Forest/02/Right2"), getAccess("hook")))
end

function Forest02Left()
  return math.max(getAccess("@Forest/01/Right"), getAccess("@Forest/01/Top"))
end

function Forest02Right1()
  return math.max(getAccess("@Forest/04/Left"), math.min(getAccess("@Forest/04/Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Forest02Right2()
  return math.max(getAccess("@Forest/03/Left"), getAccess("@Forest/03/Right"))
end

function Forest03AmuletFragment()
  return math.min(getAccess("@Forest/03/Left"), getAccess("aquatic"))
end

function Forest03ChainofSorcery()
  return math.min(getAccess("@Forest/03/Left"), getAccess("aquatic"))
end

function Forest03Right()
  return math.max(getAccess("@Forest/05/Left"), getAccess("@Forest/05/DryadLake"))
end

function Forest03Left()
  return math.max(getAccess("@Forest/02/Right2"), getAccess("@Forest/02/Left"))
end

function Forest04AmuletFragment()
  return getLocAccess("@Forest/04/Right")
end

function Forest04RustedBlueOrnament()
  return math.min(getAccess("@Forest/04/Left"), math.max(LEDGE_A(), math.min(getAccess("claws"), HORIZONTAL_A())))
end

function Forest04StagnantBlightx10()
  return math.min(getAccess("@Forest/04/Left"), math.min(getAccess("hammer"), LEDGE_A()))
end

function Forest04Right()
  return math.max(getAccess("@Forest/05/Top"), math.min(getAccess("@Forest/05/DryadLake"), LEDGE_A()))
end

function Forest04Left()
  return math.max(getAccess("@Forest/02/Right1"), getAccess("@Forest/02/Left"), math.min(getAccess("@Forest/02/Right2"), math.max(getAccess("claws"), LEDGE_A())))
end

function Forest05CovenHandbook()
  return math.max(getAccess("@Forest/05/DryadLake"), getAccess("@Forest/05/Right"), getAccess("@Forest/05/Left"), getAccess("@Forest/05/Top"))
end

function Forest05Right()
  return math.max(getAccess("@Forest/07/Left"), math.min(getAccess("@Forest/07/Bottom"), LEDGE_A()), math.min(getAccess("@Forest/07/Right"), math.max(LEDGE_A(), getAccess("hook"), HORIZONTAL_A(), getAccess("dash"))))
end

function Forest05Left()
  return math.max(getAccess("@Forest/03/Right"), math.min(getAccess("@Forest/03/Left"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())))
end

function Forest05Top()
  return math.max(getAccess("@Forest/04/Right"), math.min(getAccess("@Forest/04/Left"), math.max(LEDGE_A(), getAccess("claws"), math.min(HORIZONTAL_A(), getAccess("aquatic")))))
end

function Forest06FungalSorcererFight()
  return math.min(getAccess("@Forest/06/Bottom"), LEDGE_A())
end

function Forest06LoversLetter()
  return math.min(getAccess("@Forest/06/Bottom"), LEDGE_A())
end

function Forest06FuriousBlightx10()
  return math.min(getAccess("@Forest/06/Bottom"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("hammer")), LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Forest06Bottom()
  return math.max(getAccess("@Forest/07/Top"), math.min(getAccess("@Forest/07/Left"), LEDGE_A()))
end

function Forest07AmuletFragment()
  return math.min(math.max(getAccess("@Forest/07/Left"), getAccess("@Forest/07/Bottom")), math.max(LEDGE_A(), getAccess("hook"), HORIZONTAL_A(), getAccess("claws")))
end

function Forest07StagnantBlightx30()
  return math.min(getAccess("@Forest/07/Right"), math.max(getAccess("hook"), math.min(getAccess("claws"), LEDGE_A())))
end

function Forest07StagnantBlightx10()
  return math.max(getAccess("@Forest/07/Left"), getAccess("@Forest/07/Right"))
end

function Forest07Right()
  return math.max(getAccess("@Oubliette/01/Left"), math.min(getAccess("@Oubliette/01/Right"), getAccess("aquatic")))
end

function Forest07Bottom()
  return math.max(getAccess("@Forest/08/Top"), math.min(getAccess("@Forest/08/Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Forest07Left()
  return math.max(getAccess("@Forest/05/Right"), getAccess("@Forest/05/DryadLake"))
end

function Forest07Top()
  return getLocAccess("@Forest/06/Bottom")
end

function Forest08ManisasRing()
  return math.min(getAccess("@Forest/08/Top"), math.max(LEDGE_A(), getAccess("hook"), math.min(getAccess("claws"), HORIZONTAL_A())))
end

function Forest08CrackedFamiliarStone()
  return math.min(getAccess("@Forest/08/ManisasRing"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), math.min(getAccess("claws"), getAccess("sinner")), getAccess("hook")))
end

function Forest08FuriousBlightx10()
  return math.min(getAccess("@Forest/08/Top"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Forest08Top()
  return math.max(getAccess("@Forest/07/Bottom"), getAccess("@Forest/07/Left"))
end

function Forest08Right()
  return math.max(getAccess("@Forest/10/Left"), getAccess("@Forest/10/WitchsHermitage"))
end

function Forest09PriestessWish()
  return math.min(getAccess("@Forest/10/Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws")))
end

function Forest09TarnishedPicture()
  return math.min(getAccess("@Forest/10/Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws")))
end

function Forest09Top()
  return math.max(getAccess("@Forest/10/Bottom1"), getAccess("@Forest/10/WitchsHermitage"))
end

function Forest09FuriousBlightx10()
  return math.min(math.max(getAccess("@Forest/09/Top"), getAccess("@Forest/09/Left")), getAccess("aquatic"))
end

function Forest09Left()
  return math.max(getAccess("@Swamp/2/Top"), getAccess("@Swamp/2/Right"))
end

function Forest10Bottom2()
  return math.max(getAccess("@Forest/11/Top"), getAccess("@Forest/11/Right"))
end

function Forest10Bottom1()
  return math.max(getAccess("@Forest/09/Top"), math.min(getAccess("@Forest/09/Left"), getAccess("aquatic")))
end

function Forest10SorcerersNote()
  return math.max(getAccess("@Forest/10/WitchsHermitage"), getAccess("@Forest/10/Bottom2"), getAccess("@Forest/10/Bottom1"), getAccess("@Forest/10/Left"), getAccess("@Forest/10/Right"))
end

function Forest10Left()
  return math.max(getAccess("@Forest/08/Right"), math.min(getAccess("@Forest/08/Top"), math.max(LEDGE_A(), getAccess("hook"), getAccess("claws"))))
end

function Forest10Right()
  return math.max(getAccess("@Forest/12/Left"), math.min(getAccess("@Forest/12/Bottom"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Forest11FloralSorceressFight()
  return getLocAccess("@Forest/11/Top")
end

function Forest11AmuletFragment()
  return getLocAccess("@Forest/11/Top")
end

function Forest11ChainofSorcery()
  return getLocAccess("@Forest/11/Top")
end

function Forest11RuinedWitchsBook()
  return math.min(getAccess("@Forest/11/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Forest11Top()
  return math.max(getAccess("@Forest/10/Bottom2"), getAccess("@Forest/10/WitchsHermitage"))
end

function Forest11StagnantBlightx30()
  return math.min(getAccess("@Forest/11/Right"), math.max(math.min(LEDGE_A(), getAccess("claws")), getAccess("hook"), math.min(HORIZONTAL2_A(), math.max(getAccess("dash"), getAccess("djump"), getAccess("silva")))))
end

function Forest11StagnantBlightx10()
  return math.min(getAccess("@Forest/11/Right"), getAccess("aquatic"))
end

function Forest11Right()
  return math.max(getAccess("@Forest/14/Left"), math.min(getAccess("@Forest/14/CovenHalls"), getAccess("aquatic")))
end

function Forest12AmuletFragment()
  return math.min(getAccess("@Forest/12/Left"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook")))
end

function Forest12StagnantBlightx10()
  return math.max(getAccess("@Forest/12/Bottom"), getAccess("@Forest/12/Right"))
end

function Forest12Left()
  return math.max(getAccess("@Forest/10/Right"), getAccess("@Forest/10/WitchsHermitage"))
end

function Forest12Bottom()
  return math.max(getAccess("@Forest/13/Top"), getAccess("@Forest/13/Bottom"))
end

function Forest12Right()
  return getLocAccess("@Forest/17/Left")
end

function Forest13StagnantBlightx10()
  return getLocAccess("@Forest/13/Top")
end

function Forest13Top()
  return math.max(getAccess("@Forest/12/Bottom"), getAccess("@Forest/12/Right"), math.min(getAccess("@Forest/12/Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Forest13Bottom()
  return getLocAccess("@Forest/14/CovenHalls")
end

function Forest13Right()
  return getLocAccess("@Forest/16/Left")
end

function Forest14TheParishWayIII()
  return math.max(getAccess("@Forest/14/CovenHalls"), getAccess("@Forest/14/Bottom"), getAccess("@Forest/14/Top"), getAccess("@Forest/14/Left"))
end

function Forest14Bottom()
  return getLocAccess("@Forest/15/Top")
end

function Forest14Top()
  return math.max(getAccess("@Forest/13/Bottom"), math.min(getAccess("@Forest/13/Top"), LEDGE_A()))
end

function Forest14Left()
  return math.max(getAccess("@Forest/11/Right"), math.min(getAccess("@Forest/11/Top"), getAccess("aquatic")))
end

function Forest15DarkWitchEleineFight()
  return getLocAccess("@Forest/15/Top")
end

function Forest15Top()
  return getLocAccess("@Forest/14/CovenHalls")
end

function Forest16EleinesDiaryIII()
  return getLocAccess("@Forest/16/Left")
end

function Forest16ThicketStoneTabletFragment()
  return getLocAccess("@Forest/16/Left")
end

function Forest16StagnantBlightx800()
  return getLocAccess("@Forest/16/Left")
end

function Forest16Left()
  return math.max(getAccess("@Forest/13/Right"), math.min(getAccess("@Forest/13/Top"), getAccess("claws"), getAccess("unlock"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A())))
end

function Forest17AmuletGem()
  return math.min(getAccess("@Forest/17/Left"), math.max(getAccess("claws"), LEDGE_A()))
end

function Forest17EleinesDiaryII()
  return math.min(getAccess("@Forest/17/Left"), math.max(getAccess("claws"), math.min(LEDGE_A(), getAccess("hook")), math.min(getAccess("silva"), getAccess("djump"))))
end

function Forest17SpellboundAnklet()
  return math.min(getAccess("@Forest/17/Left"), math.max(getAccess("claws"), LEDGE_A()))
end

function Forest17Left()
  return math.max(getAccess("@Forest/12/Right"), math.min(getAccess("@Forest/12/Left"), math.max(math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"))), math.min(getAccess("claws"), LEDGE_A(), math.max(HORIZONTAL_A(), getAccess("dash"))), math.min(getAccess("silva"), getAccess("djump")), math.min(LEDGE_A(), getAccess("sinner")), math.min(LEDGE2_A(), HORIZONTAL_A()))), math.min(getAccess("@Forest/12/Bottom"), getAccess("hook")))
end

function Forest17EleinesDiaryI()
  return getLocAccess("@Forest/17/Left")
end

function Fort01FallenSentinelFight()
  return math.max(getAccess("@Fort/01/Left1"), math.min(getAccess("@Fort/01/Right"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Fort01FuriousBlightx30()
  return getLocAccess("@Fort/01/Left1")
end

function Fort01Right()
  return math.min(getAccess("@Fort/03/BastionGates"), math.max(getAccess("hook"), LEDGE_A()))
end

function Fort01Left2()
  return math.max(getAccess("@Village/15/Right"), math.min(getAccess("@Village/15/Left"), getAccess("@Village/15/Village800")))
end

function Fort01Left1()
  return math.max(getAccess("@Castle/07/Right"), math.min(getAccess("@Castle/07/GuestChamber"), math.max(getAccess("hook"), LEDGE3_A())))
end

function Fort02StagnantBlightx10()
  return getLocAccess("@Fort/02/Left")
end

function Fort02FuriousBlightx10()
  return getLocAccess("@Fort/02/Right")
end

function Fort02Right()
  return getLocAccess("@Fort/03/BastionGates")
end

function Fort02Left()
  return math.max(getAccess("@Cave/22/Right"), getAccess("@Cave/22/Bottom"))
end

function Fort03BloodiedNoteI()
  return math.max(getAccess("@Fort/03/BastionGates"), getAccess("@Fort/03/Right"), getAccess("@Fort/03/Left1"), getAccess("@Fort/03/Left2"), getAccess("@Fort/03/Top"))
end

function Fort03Right()
  return math.max(getAccess("@Fort/04/Left"), getAccess("@Fort/04/Top"))
end

function Fort03Left1()
  return math.max(getAccess("@Fort/01/Right"), getAccess("@Fort/01/Left1"), getAccess("@Fort/01/Left2"))
end

function Fort03Left2()
  return math.max(getAccess("@Fort/02/Right"), math.min(getAccess("@Fort/02/Left"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), math.min(getAccess("djump"), math.max(getAccess("silva"), getAccess("verboten"))))))
end

function Fort03Top()
  return math.max(getAccess("@Fort/05/Bottom1"), math.min(getAccess("@Fort/05/Bottom2"), LEDGE_A()))
end

function Fort04StagnantBlightx100()
  return math.min(getAccess("@Fort/04/Left"), math.min(CHARGE_A(), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A())))
end

function Fort04Top()
  return math.max(getAccess("@Fort/05/Bottom2"), getAccess("@Fort/05/Right"))
end

function Fort04Left()
  return getLocAccess("@Fort/03/BastionGates")
end

function Fort05AmuletFragment()
  return math.min(getAccess("@Fort/05/Right"), LEDGE_A())
end

function Fort05ChainofSorcery()
  return math.min(getAccess("@Fort/05/Bottom2"), math.min(LEDGE_A(), math.max(getAccess("hook"), getAccess("claws"))))
end

function Fort05StagnantBlightx10()
  return math.max(math.min(getAccess("@Fort/05/Bottom2"), LEDGE_A(), getAccess("hammer")), getAccess("@Fort/05/Bottom1"))
end

function Fort05Bottom2()
  return math.max(getAccess("@Fort/04/Top"), math.min(getAccess("@Fort/04/Left"), LEDGE_A()))
end

function Fort05Right()
  return math.max(getAccess("@Fort/06/Left"), getAccess("@Fort/06/Bottom"), math.min(getAccess("@Fort/06/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort05Bottom1()
  return math.min(getAccess("@Fort/03/BastionGates"), getAccess("claws"))
end

function Fort05Top()
  return math.max(getAccess("@Fort/15/Bottom"), getAccess("@Fort/15/Top"))
end

function Fort06StagnantBlightx30()
  return math.min(getAccess("@Fort/06/Right"), math.min(LEDGE_A(), getAccess("claws")))
end

function Fort06Left()
  return math.max(getAccess("@Fort/05/Right"), math.min(getAccess("@Fort/05/Bottom2"), LEDGE_A()))
end

function Fort06Right()
  return math.max(getAccess("@Fort/07/Left"), math.min(getAccess("@Fort/07/Top"), LEDGE_A()))
end

function Fort06Bottom()
  return math.min(getAccess("@Fort/10/Courtyard"), getAccess("claws"), LEDGE_A())
end

function Fort07StagnantBlightx10()
  return math.min(getAccess("@Fort/07/Bottom1"), math.max(LEDGE_A(), getAccess("claws")))
end

function Fort07Bottom1()
  return math.max(getAccess("@Fort/09/Top1"), math.min(getAccess("@Fort/09/Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Fort07Right()
  return math.max(getAccess("@Fort/08/Left"), getAccess("@Fort/08/SecondSpireChamber"))
end

function Fort07Left()
  return math.max(getAccess("@Fort/06/Right"), math.min(getAccess("@Fort/06/Left"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort07Top()
  return math.max(getAccess("@Fort/11/Bottom"), getAccess("@Fort/11/Left"), getAccess("@Fort/11/Top1"), getAccess("@Fort/11/Top2"))
end

function Fort07Bottom2()
  return math.max(getAccess("@Fort/09/Top2"), math.min(getAccess("@Fort/09/Right"), LEDGE_A(), getAccess("claws")))
end

function Fort08HoenirsDiaryIII()
  return math.max(getAccess("@Fort/08/SecondSpireChamber"), getAccess("@Fort/08/Left"))
end

function Fort08Left()
  return math.max(getAccess("@Fort/07/Right"), getAccess("@Fort/07/Top"))
end

function Fort09NoteontheCastleWall()
  return getLocAccess("@Fort/09/Left")
end

function Fort09SnowdropBracelet()
  return math.min(getAccess("@Fort/09/Left"), CHARGE_A())
end

function Fort09StagnantBlightx10()
  return getLocAccess("@Fort/09/Top1")
end

function Fort09FuriousBlightx30()
  return getLocAccess("@Fort/09/Top2")
end

function Fort09Right()
  return getLocAccess("@Outside/03/Top")
end

function Fort09Left()
  return getLocAccess("@Fort/10/Courtyard")
end

function Fort09Top1()
  return math.max(getAccess("@Fort/07/Right"), getAccess("@Fort/07/Bottom1"), getAccess("@Fort/07/Top"), math.min(getAccess("@Fort/07/Bottom2"), getAccess("claws")))
end

function Fort09Top2()
  return math.max(getAccess("@Fort/07/Bottom2"), math.min(getAccess("@Fort/07/Bottom1"), getAccess("claws")))
end

function Fort10AmuletFragment()
  return math.min(getAccess("@Fort/10/Courtyard"), getAccess("claws"), LEDGE_A())
end

function Fort10BloodiedNoteII()
  return math.max(getAccess("@Fort/10/Courtyard"), getAccess("@Fort/10/Right"), getAccess("@Fort/10/Top"))
end

function Fort10Right()
  return math.max(getAccess("@Fort/09/Left"), getAccess("@Fort/09/Right"), getAccess("@Fort/09/Top1"), getAccess("@Fort/09/Top2"))
end

function Fort10Top()
  return math.max(getAccess("@Fort/06/Bottom"), getAccess("@Fort/06/Left"), getAccess("@Fort/06/Right"))
end

function Fort11RicorusRing()
  return math.min(getAccess("hammer"), getAccess("aquatic"), math.max(getAccess("@Fort/11/Fort11Stagnant"), math.min(getAccess("@Fort/11/Bottom"), math.max(math.min(LEDGE_A(), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("claws")))), LEDGE2_A()))))
end

function Fort11StagnantBlightx30()
  return math.max(getAccess("@Fort/11/Top2"), math.min(getAccess("@Fort/11/Bottom"), math.max(math.min(LEDGE_A(), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("claws")))), LEDGE2_A()), math.max(getAccess("hook"), math.min(LEDGE2_A(), getAccess("claws")), LEDGE3_A())))
end

function Fort11Bottom()
  return math.max(getAccess("@Fort/07/Top"), getAccess("@Fort/07/Bottom1"), math.min(getAccess("@Fort/07/Left"), math.max(LEDGE_A(), getAccess("claws"))), getAccess("@Fort/07/Right"))
end

function Fort11Left()
  return math.max(getAccess("@Fort/12/Right"), getAccess("@Fort/12/Left"))
end

function Fort11Top1()
  return math.max(getAccess("@Fort/13/Bottom1"), getAccess("@Fort/13/Bottom2"), getAccess("@Fort/13/Left"), getAccess("@Fort/13/Top"))
end

function Fort11Top2()
  return math.max(getAccess("@Fort/13/Bottom2"), getAccess("@Fort/13/Top"), getAccess("@Fort/13/Bottom1"))
end

function Fort12ForsakenFellwyrmFight()
  return math.min(getAccess("@Fort/12/Fort12HP"), CHARGE_A())
end

function Fort12AmuletFragment()
  return math.max(getAccess("@Fort/12/Top"), math.min(getAccess("@Fort/12/Right"), math.max(math.min(getAccess("claws"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A())), LEDGE3_A())))
end

function Fort12Right()
  return math.max(getAccess("@Fort/11/Left"), math.min(getAccess("@Fort/11/Bottom"), LEDGE_A()), math.min(getAccess("@Fort/11/Top1"), math.max(HORIZONTAL_A(), LEDGE_A(), getAccess("dash"))))
end

function Fort12Top()
  return math.max(getAccess("@Fort/14/Bottom"), getAccess("@Fort/14/Right"), getAccess("@Fort/14/Left"))
end

function Fort12Left()
  return getLocAccess("@Fort/16/Right")
end

function Fort13AmuletFragment()
  return getLocAccess("@Fort/13/Left")
end

function Fort13ChainofSorcery()
  return math.max(math.min(getAccess("@Fort/13/Bottom1"), getAccess("claws"), LEDGE_A()), getAccess("@Fort/13/Top"))
end

function Fort13Bottom1()
  return math.max(getAccess("@Fort/11/Top1"), math.min(getAccess("@Fort/11/Left"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort13Bottom2()
  return math.max(math.min(getAccess("@Fort/11/Top2"), getAccess("claws")), math.min(getAccess("@Fort/11/Fort11Stagnant"), getAccess("claws")))
end

function Fort13Left()
  return math.max(getAccess("@Fort/14/Right"), getAccess("@Fort/14/Left"), getAccess("@Fort/14/Bottom"))
end

function Fort13Top()
  return math.max(getAccess("@Fort/19/Bottom"), math.min(getAccess("@Fort/19/Top"), getAccess("claws")))
end

function Fort14Tabletx800StagnantWritingontheWall()
  return math.min(getAccess("@Fort/14/Right"), getAccess("hook"), getAccess("hammer"), getAccess("unlock"), getAccess("aquatic"))
end

function Fort14StagnantBlightx100()
  return math.min(getAccess("@Fort/14/Bottom"), CHARGE_A())
end

function Fort14FuriousBlightx10()
  return math.max(getAccess("@Fort/14/Right"), getAccess("@Fort/14/Left"), getAccess("@Fort/14/Bottom"))
end

function Fort14Left()
  return math.max(getAccess("@Fort/15/Right1"), math.min(getAccess("@Fort/15/Right2"), LEDGE_A()))
end

function Fort14Right()
  return math.max(getAccess("@Fort/13/Left"), math.min(getAccess("@Fort/13/Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Fort14Bottom()
  return math.min(getAccess("@Fort/12/Top"), LEDGE_A(), getAccess("claws"))
end

function Fort15BloodiedNoteIII()
  return getLocAccess("@Fort/15/Right2")
end

function Fort15ImmortalsCrest()
  return math.min(getAccess("@Fort/15/Top"), math.max(getAccess("hook"), LEDGE2_A()))
end

function Fort15StagnantBlightx30()
  return math.max(math.min(getAccess("@Fort/15/Right2"), getAccess("claws")), getAccess("@Fort/15/Top"), getAccess("@Fort/15/Bottom"))
end

function Fort15StagnantBlightx10()
  return math.min(getAccess("@Fort/15/Right2"), LEDGE_A())
end

function Fort15Right2()
  return getLocAccess("@Fort/16/Left1")
end

function Fort15Right1()
  return math.max(getAccess("@Fort/14/Left"), math.min(getAccess("@Fort/14/Right"), math.max(getAccess("dash"), HORIZONTAL_A(), LEDGE_A())))
end

function Fort15Bottom()
  return math.min(getAccess("@Fort/05/Bottom2"), LEDGE_A(), getAccess("claws"))
end

function Fort15Top()
  return getLocAccess("@Fort/17/Bottom")
end

function Fort15Right3()
  return getLocAccess("@Fort/16/Left2")
end

function Fort16MonumentEngraving()
  return math.max(getAccess("@Fort/16/Left1"), getAccess("@Fort/16/Top"), getAccess("@Fort/16/Left2"), getAccess("@Fort/16/Right"))
end

function Fort16Left1()
  return math.max(getAccess("@Fort/15/Right2"), getAccess("@Fort/15/Right1"), getAccess("@Fort/15/Top"), math.min(getAccess("@Fort/15/Bottom"), LEDGE_A()))
end

function Fort16Top()
  return math.max(getAccess("@Fort/18/Bottom"), getAccess("@Fort/18/Right"))
end

function Fort16Left2()
  return math.max(getAccess("@Fort/15/Right3"), math.min(getAccess("@Fort/15/Bottom"), LEDGE_A()), getAccess("@Fort/15/Right2"))
end

function Fort16Right()
  return math.max(getAccess("@Fort/12/Left"), getAccess("@Fort/12/Right"), getAccess("@Fort/12/Top"))
end

function Fort17AmuletFragment()
  return getLocAccess("@Fort/17/Bottom")
end

function Fort17Bottom()
  return math.max(getAccess("@Fort/15/Top"), math.min(getAccess("@Fort/15/Right3"), LEDGE_A()))
end

function Fort17Right()
  return math.max(getAccess("@Fort/18/Left"), getAccess("@Fort/18/Right"))
end

function Fort18AmuletGem()
  return math.min(getAccess("@Fort/18/Right"), math.min(getAccess("claws"), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), LEDGE_A()), LEDGE2_A(), math.min(getAccess("djump"), getAccess("dash")))))
end

function Fort18ChainofSorcery()
  return math.min(getAccess("@Fort/18/Bottom"), math.max(LEDGE_A(), getAccess("claws")))
end

function Fort18Left()
  return math.max(getAccess("@Fort/17/Right"), getAccess("@Fort/17/Bottom"))
end

function Fort18Right()
  return math.max(getAccess("@Fort/19/Left"), math.min(getAccess("@Fort/19/Top"), LEDGE_A()))
end

function Fort18Bottom()
  return getLocAccess("@Fort/16/Top")
end

function Fort19AncientDragonClaw()
  return getLocAccess("@Fort/19/Top")
end

function Fort19FuriousBlightx30()
  return math.min(getAccess("@Fort/19/Top"), getAccess("claws"))
end

function Fort19FuriousBlightx10()
  return math.min(getAccess("@Fort/19/Left"), getAccess("hammer"))
end

function Fort19Left()
  return math.max(getAccess("@Fort/18/Right"), getAccess("@Fort/18/Left"), getAccess("@Fort/18/Bottom"))
end

function Fort19Top()
  return math.max(getAccess("@Fort/20/Bottom"), getAccess("@Fort/20/MourningHall"))
end

function Fort19Bottom()
  return math.max(math.min(getAccess("@Fort/13/Top"), getAccess("claws"), LEDGE_A()), math.min(getAccess("@Fort/13/Bottom1"), getAccess("claws"), LEDGE_A()))
end

function Fort20Bottom()
  return math.max(getAccess("@Fort/19/Top"), math.min(getAccess("@Fort/19/Left"), LEDGE_A()))
end

function Fort20Top()
  return getLocAccess("@Fort/21/Bottom")
end

function Fort21defeatUlv()
  return getLocAccess("@Fort/21/Bottom")
end

function Fort21PriestessWish()
  return math.min(getAccess("@Fort/21/Ulv"), math.max(getAccess("claws"), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("verboten"), getAccess("dodge2")))))
end

function Fort21WhitePriestessBastionLetter()
  return math.min(getAccess("@Fort/21/Ulv"), math.max(getAccess("claws"), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("verboten"), getAccess("dodge2")))))
end

function Fort21Bottom()
  return math.max(getAccess("@Fort/20/Top"), getAccess("@Fort/20/MourningHall"))
end

function MourningHall()
  return math.max(getAccess("@Fort/20/MourningHall"), getAccess("@Fort/20/Bottom"), getAccess("@Fort/20/Top"))
end

function Oubliette01AmuletFragment()
  return math.min(getAccess("@Oubliette/01/Left"), getAccess("aquatic"))
end

function Oubliette01StagnantBlightx10()
  return math.min(getAccess("@Oubliette/01/Left"), getAccess("aquatic"))
end

function Oubliette01Left()
  return math.max(getAccess("@Forest/07/Right"), math.min(getAccess("@Forest/07/Left"), math.max(math.min(getAccess("dodge2"), math.max(LEDGE_A(), getAccess("dash"))), LEDGE2_A(), getAccess("hook"), getAccess("sinner"), math.min(math.max(getAccess("djump"), getAccess("verboten")), getAccess("dash")), math.min(getAccess("silva"), getAccess("dash"), getAccess("claws")))))
end

function Oubliette01Right()
  return math.max(getAccess("@Oubliette/02/Left"), math.min(getAccess("@Oubliette/02/Aqueduct"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Oubliette02ExecutionersVow()
  return math.max(getAccess("@Oubliette/02/Aqueduct"), getAccess("@Oubliette/02/Left"), getAccess("@Oubliette/02/Right1"), getAccess("@Oubliette/02/Right2"))
end

function Oubliette02Left()
  return math.max(getAccess("@Oubliette/01/Right"), math.min(getAccess("@Oubliette/01/Left"), getAccess("aquatic")))
end

function Oubliette02Right1()
  return math.max(getAccess("@Oubliette/05/Left"), getAccess("@Oubliette/05/Right"), getAccess("@Oubliette/05/Top1"))
end

function Oubliette02Right2()
  return math.max(math.min(getAccess("@Oubliette/04/Right"), math.max(getAccess("claws"), getAccess("hook"), LEDGE_A())), getAccess("@Oubliette/04/Left"))
end

function Oubliette03StagnantBlightx10()
  return math.min(getAccess("@Oubliette/03/Left"), getAccess("aquatic"))
end

function Oubliette03StagnantBlightx10_1()
  return math.min(getAccess("@Oubliette/03/Left"), getAccess("aquatic"))
end

function Oubliette03Left()
  return math.max(getAccess("@Oubliette/04/Right"), getAccess("@Oubliette/04/Left"))
end

function Oubliette03Right()
  return math.max(getAccess("@Oubliette/10/Left1"), getAccess("@Oubliette/10/DarkChamber"))
end

function Oubliette03Top()
  return math.max(getAccess("@Oubliette/05/Bottom3"), getAccess("@Oubliette/05/Left"))
end

function Oubliette03StagnantBlightx800()
  return math.min(getAccess("@Oubliette/03/Right"), CHARGE_A())
end

function Oubliette04StagnantBlightx30()
  return math.min(getAccess("@Oubliette/04/Left"), math.max(FULLSILVA_A(), getAccess("hook"), LEDGE3_A(), math.min(getAccess("sinner"), getAccess("silva"), getAccess("djump")), math.min(getAccess("silva"), getAccess("verboten"), getAccess("dodge2")), math.min(HORIZONTAL2_A(), getAccess("dash"), LEDGE_A()), math.min(getAccess("djump"), getAccess("verboten"), HORIZONTAL_A())))
end

function Oubliette04FuriousBlightx10()
  return math.max(getAccess("@Oubliette/04/Right"), getAccess("@Oubliette/04/Left"))
end

function Oubliette04Right()
  return math.max(getAccess("@Oubliette/03/Left"), math.min(getAccess("@Oubliette/03/Right"), getAccess("aquatic")))
end

function Oubliette04Left()
  return math.max(getAccess("@Oubliette/02/Right2"), getAccess("@Oubliette/02/Aqueduct"))
end

function Oubliette051Bottom()
  return math.max(getAccess("@Oubliette/05/Top1"), math.min(getAccess("@Oubliette/05/Left"), LEDGE_A()))
end

function Oubliette05FuriousBlightx10()
  return getLocAccess("@Oubliette/051/Bottom")
end

function Oubliette052Bottom1()
  return math.max(getAccess("@Oubliette/05/Top2"), getAccess("@Oubliette/05/Top1"))
end

function Oubliette05StagnantBlightx10()
  return math.min(getAccess("@Oubliette/052/Bottom1"), math.min(LEDGE_A(), getAccess("claws"), getAccess("hook")))
end

function Oubliette052Bottom2()
  return getLocAccess("@Oubliette/05/Top4")
end

function Oubliette05ChainofSorcery()
  return getLocAccess("@Oubliette/053/Top")
end

function Oubliette053Top()
  return math.max(getAccess("@Oubliette/05/Bottom2"), getAccess("@Oubliette/05/Left"))
end

function Oubliette05AmuletGemStagnantBlightx30()
  return getLocAccess("@Oubliette/05/Top4")
end

function Oubliette05Top2()
  return math.max(getAccess("@Oubliette/052/Bottom1"), getAccess("@Oubliette/052/Bottom2"))
end

function Oubliette05Bottom2()
  return getLocAccess("@Oubliette/053/Top")
end

function Oubliette05Top3()
  return getLocAccess("@Oubliette/072/Bottom")
end

function Oubliette05Top1()
  return getLocAccess("@Oubliette/051/Bottom")
end

function Oubliette05Bottom1()
  return getLocAccess("@Oubliette/071/Top")
end

function Oubliette05StagnantBlightx100()
  return math.min(getAccess("@Oubliette/05/Top1"), CHARGE_A())
end

function Oubliette05Left()
  return math.max(getAccess("@Oubliette/02/Right1"), getAccess("@Oubliette/02/Aqueduct"))
end

function Oubliette05Right()
  return math.max(getAccess("@Oubliette/06/Left"), math.min(getAccess("@Oubliette/06/Bottom"), getAccess("hook")))
end

function Oubliette05Bottom3()
  return math.max(getAccess("@Oubliette/03/Top"), math.min(getAccess("@Oubliette/03/Right"), getAccess("hook")))
end

function Oubliette05Top4()
  return math.max(getAccess("@Oubliette/052/Bottom2"), math.min(getAccess("@Oubliette/052/Bottom1"), math.min(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Oubliette06HoenirsDiaryI()
  return math.max(getAccess("@Oubliette/06/Cells"), getAccess("@Oubliette/061/Left"))
end

function Oubliette061Left()
  return math.max(getAccess("@Oubliette/07/Right1"), math.min(getAccess("@Oubliette/07/Bottom1"), math.max(getAccess("hook"), LEDGE_A())))
end

function Oubliette06ExecutionersGloves()
  return math.min(getAccess("@Oubliette/062/Bottom2"), getAccess("aquatic"))
end

function Oubliette062Bottom2()
  return math.max(getAccess("@Oubliette/07/Bottom2"), getAccess("@Oubliette/07/Bottom1"))
end

function Oubliette06ChainofSorcery()
  return getLocAccess("@Oubliette/063/Left1")
end

function Oubliette063Left1()
  return math.max(getAccess("@Oubliette/07/Left1"), math.min(getAccess("@Oubliette/07/Bottom1"), math.max(math.min(getAccess("hook"), math.max(LEDGE_A(), HORIZONTAL_A())), math.min(getAccess("silva"), getAccess("djump")))))
end

function Oubliette06StockadeStoneTabletFragment()
  return getLocAccess("@Oubliette/064/Top")
end

function Oubliette064Top()
  return math.max(getAccess("@Oubliette/07/Top"), math.min(getAccess("@Oubliette/07/Left1"), getAccess("unlock"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE3_A(), FULLSILVA_A())))))
end

function Oubliette06AmuletFragment()
  return getLocAccess("@Oubliette/06/Bottom")
end

function Oubliette06ChainofSorcery_1()
  return math.min(getAccess("@Oubliette/06/Bottom"), getAccess("hook"))
end

function Oubliette06StagnantBlightx10()
  return getLocAccess("@Oubliette/06/Bottom")
end

function Oubliette06Left()
  return math.max(getAccess("@Oubliette/05/Right"), math.min(getAccess("@Oubliette/05/Top4"), getAccess("hammer")))
end

function Oubliette06Right()
  return getLocAccess("@Oubliette/07/Left2")
end

function Oubliette06Bottom()
  return math.max(getAccess("@Oubliette/10/Top"), getAccess("@Oubliette/10/DarkChamber"))
end

function Oubliette07ForbiddenTextScrap()
  return getLocAccess("@Oubliette/071/Top")
end

function Oubliette071Top()
  return math.max(getAccess("@Oubliette/05/Bottom1"), getAccess("@Oubliette/05/Left"))
end

function Oubliette07HiddenTestSubjectFight()
  return getLocAccess("@Oubliette/072/Bottom")
end

function Oubliette072Bottom()
  return math.max(getAccess("@Oubliette/05/Top3"), getAccess("@Oubliette/05/Top1"))
end

function Oubliette07Right1()
  return math.max(getAccess("@Oubliette/061/Left"), getAccess("@Oubliette/06/Cells"))
end

function Oubliette07Left1()
  return getLocAccess("@Oubliette/063/Left1")
end

function Oubliette07Bottom2()
  return getLocAccess("@Oubliette/062/Bottom2")
end

function Oubliette07Top()
  return getLocAccess("@Oubliette/064/Top")
end

function Oubliette07Left2()
  return math.max(getAccess("@Oubliette/06/Right"), math.min(getAccess("@Oubliette/06/Bottom"), getAccess("hook")))
end

function Oubliette07Right2()
  return math.max(getAccess("@Oubliette/13/Left"), math.min(getAccess("@Oubliette/13/Right"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("claws"), HORIZONTAL_A()))))
end

function Oubliette07Bottom1()
  return math.max(getAccess("@Oubliette/09/Top"), getAccess("@Oubliette/09/Left"))
end

function Oubliette08FuriousBlightx30()
  return math.min(getAccess("hammer"), math.max(getAccess("@Oubliette/08/Top"), math.min(getAccess("@Oubliette/08/Right"), math.max(getAccess("hook"), LEDGE_A(), HORIZONTAL_A()))))
end

function Oubliette08FuriousBlightx30_1()
  return math.min(getAccess("@Oubliette/08/Left"), getAccess("hook"))
end

function Oubliette08Right()
  return math.max(getAccess("@Oubliette/11/Left2"), getAccess("@Oubliette/11/Left1"), getAccess("@Oubliette/11/Right1"), getAccess("@Oubliette/11/Top"), getAccess("@Oubliette/11/Right2"))
end

function Oubliette08Left()
  return math.max(getAccess("@Oubliette/09/Right"), math.min(getAccess("@Oubliette/09/Top"), getAccess("aquatic"), HORIZONTAL_A()))
end

function Oubliette08Top()
  return math.max(getAccess("@Oubliette/13/Bottom"), getAccess("@Oubliette/13/Right"))
end

function Oubliette09x2AmuletFragments()
  return math.min(getAccess("@Oubliette/09/Top"), getAccess("claws"))
end

function Oubliette09x2AmuletFragments_1()
  return math.min(getAccess("@Oubliette/09/Top"), getAccess("claws"))
end

function Oubliette09StagnantBlightx30()
  return math.min(getAccess("@Oubliette/09/Top"), getAccess("aquatic"))
end

function Oubliette09Right()
  return math.max(getAccess("@Oubliette/08/Left"), getAccess("@Oubliette/08/Right"), getAccess("@Oubliette/08/Top"))
end

function Oubliette09Left()
  return math.max(getAccess("@Oubliette/10/Right"), getAccess("@Oubliette/10/DarkChamber"))
end

function Oubliette09Top()
  return math.max(getAccess("@Oubliette/07/Bottom1"), getAccess("@Oubliette/07/Left1"), getAccess("@Oubliette/07/Left2"), getAccess("@Oubliette/07/Bottom2"), getAccess("@Oubliette/07/Right1"), getAccess("@Oubliette/07/Right2"))
end

function Oubliette10ExecutionersMissive()
  return math.max(getAccess("@Oubliette/10/DarkChamber"), getAccess("@Oubliette/10/Left1"), getAccess("@Oubliette/10/Right"), getAccess("@Oubliette/10/Left2"), getAccess("@Oubliette/10/Top"))
end

function Oubliette10Right()
  return math.max(getAccess("@Oubliette/09/Left"), math.min(getAccess("@Oubliette/09/Top"), getAccess("aquatic")))
end

function Oubliette10Left1()
  return math.max(getAccess("@Oubliette/03/Right"), math.min(getAccess("@Oubliette/03/Left"), getAccess("aquatic")), math.min(getAccess("@Oubliette/03/Top"), math.max(LEDGE_A(), getAccess("claws"), getAccess("aquatic"))))
end

function Oubliette10Left2()
  return getLocAccess("@Oubliette/17/Right")
end

function Oubliette10Top()
  return math.max(getAccess("@Oubliette/06/Bottom"), getAccess("@Oubliette/06/Right"), getAccess("@Oubliette/06/Left"))
end

function Oubliette11FuriousBlightx10()
  return math.max(math.min(getAccess("@Oubliette/11/Left1"), math.max(LEDGE_A(), getAccess("dash"), HORIZONTAL_A(), getAccess("hook"))), math.min(getAccess("@Oubliette/11/Left2"), getAccess("hook")))
end

function Oubliette11Right1()
  return math.max(getAccess("@Oubliette/12/Left"), getAccess("@Oubliette/12/Executioner"))
end

function Oubliette11Left2()
  return math.max(getAccess("@Oubliette/08/Right"), math.min(getAccess("@Oubliette/08/Left"), LEDGE_A()))
end

function Oubliette11Right2()
  return math.max(getAccess("@Oubliette/14/Left"), getAccess("@Oubliette/14/ExecutionGrounds"))
end

function Oubliette11Left1()
  return math.max(getAccess("@Oubliette/13/Right"), getAccess("@Oubliette/13/Left"))
end

function Oubliette11Bottom()
  return getLocAccess("@Oubliette/132/Top")
end

function Oubliette11Top()
  return getLocAccess("@Oubliette/131/Bottom")
end

function Oubliette12DarkExecutionerFight()
  return getLocAccess("@Oubliette/12/Left")
end

function Oubliette12Left()
  return math.max(getAccess("@Oubliette/11/Right1"), getAccess("@Oubliette/11/Left1"), getAccess("@Oubliette/11/Top"))
end

function Oubliette13AurasRing()
  return getLocAccess("@Oubliette/131/Bottom")
end

function Oubliette131Bottom()
  return math.max(getAccess("@Oubliette/11/Top"), math.min(getAccess("@Oubliette/11/Left1"), getAccess("claws"), math.max(FULLSILVA_A(), math.min(getAccess("hook"), math.max(HORIZONTAL_A(), LEDGE_A())))))
end

function Oubliette13AncientSoul()
  return getLocAccess("@Oubliette/132/Top")
end

function Oubliette132Top()
  return math.max(getAccess("@Oubliette/11/Bottom"), math.min(getAccess("@Oubliette/11/Left1"), getAccess("hammer")))
end

function Oubliette13ChainofSorcery()
  return math.min(getAccess("@Oubliette/13/Right"), math.max(math.min(getAccess("claws"), LEDGE_A()), LEDGE2_A(), getAccess("hook")))
end

function Oubliette13SlipofPaper()
  return getLocAccess("@Oubliette/13/Left")
end

function Oubliette13StagnantBlightx30()
  return getLocAccess("@Oubliette/13/Left")
end

function Oubliette13StagnantBlightx100()
  return math.min(getAccess("@Oubliette/13/Left"), CHARGE_A(), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"), getAccess("claws")))
end

function Oubliette13Bottom()
  return math.max(getAccess("@Oubliette/08/Top"), math.min(getAccess("@Oubliette/08/Right"), getAccess("hook")))
end

function Oubliette13Right()
  return math.max(getAccess("@Oubliette/11/Left1"), math.min(getAccess("@Oubliette/11/Left2"), getAccess("hook")), math.min(getAccess("@Oubliette/11/Right2"), math.max(HORIZONTAL_A(), LEDGE_A())))
end

function Oubliette13Left()
  return math.max(getAccess("@Oubliette/07/Right2"), getAccess("@Oubliette/07/Bottom1"))
end

function Oubliette14HoenirsDiaryII()
  return math.max(getAccess("@Oubliette/14/ExecutionGrounds"), getAccess("@Oubliette/14/Left"), getAccess("@Oubliette/14/Right"))
end

function Oubliette14Left()
  return math.max(getAccess("@Oubliette/11/Right2"), getAccess("@Oubliette/11/Left2"))
end

function Oubliette14Right()
  return math.max(getAccess("@Oubliette/15/Left"), getAccess("@Oubliette/15/Right"))
end

function Oubliette15defeatHoenir()
  return math.max(getAccess("@Oubliette/15/Left"), getAccess("@Oubliette/15/Right"))
end

function Oubliette15Left()
  return math.max(getAccess("@Oubliette/14/Right"), getAccess("@Oubliette/14/ExecutionGrounds"))
end

function Oubliette15Right()
  return math.max(getAccess("@Oubliette/16/Left"), getAccess("@Oubliette/16/Right"))
end

function Oubliette16PriestessWish()
  return getLocAccess("@Oubliette/16/Right")
end

function Oubliette16StagnantBlightx10()
  return getLocAccess("@Oubliette/16/Left")
end

function Oubliette16Left()
  return math.max(getAccess("@Oubliette/15/Right"), getAccess("@Oubliette/15/Left"))
end

function Oubliette16Right()
  return getLocAccess("@Outside/01/Left2")
end

function Oubliette17Right()
  return math.max(getAccess("@Oubliette/10/Left2"), math.min(getAccess("@Oubliette/10/DarkChamber"), CHARGE_A()))
end

function Oubliette17Bottom()
  return getLocAccess("@Swamp/06/Top")
end

function Outside01Right()
  return getLocAccess("@Outside/02/Left")
end

function Outside01Left1()
  return math.max(getAccess("@Outside/03/Right"), getAccess("@Outside/03/Top"))
end

function Outside01Left2()
  return math.max(getAccess("@Oubliette/16/Right"), math.min(getAccess("@Oubliette/16/Left"), math.max(math.min(getAccess("hook"), math.max(math.min(getAccess("sinner"), math.max(LEDGE_A(), getAccess("dash"), getAccess("dodge2"))), math.min(getAccess("silva"), math.max(getAccess("djump"), getAccess("dodge2"), math.min(getAccess("verboten"), getAccess("dash")))), math.min(getAccess("djump"), math.max(getAccess("dodge2"), getAccess("verboten"))))), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("claws"), getAccess("verboten"), getAccess("dodge2"))))))
end

function Outside02Left()
  return math.max(getAccess("@Outside/01/Right"), getAccess("@Outside/01/Left1"), getAccess("@Outside/01/Left2"))
end

function Outside03KingoftheFirstAgesTornNoteI()
  return math.min(getAccess("@Outside/03/Right"), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), getAccess("verboten"))))
end

function Outside03KingoftheFirstAgesTornNoteII()
  return getLocAccess("@Outside/03/Grotto")
end

function Outside03NymphiliasRing()
  return math.min(getAccess("@Outside/03/Right"), getAccess("aquatic"))
end

function Outside03StagnantBlightx100()
  return getLocAccess("@Outside/03/Grotto")
end

function Outside03Right()
  return math.max(getAccess("@Outside/01/Left1"), math.min(getAccess("@Outside/01/Right"), getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"), LEDGE2_A())))
end

function Outside03Top()
  return math.max(getAccess("@Fort/09/Right"), math.min(getAccess("@Fort/09/Top1"), getAccess("claws")))
end

function Swamp04VerbotenChampionFight()
  return math.min(getAccess("@Swamp/04/Bottom"), getAccess("unlock"))
end

function Swamp04ChainofSorcery()
  return getLocAccess("@Swamp/04/Left")
end

function Swamp04Bottom()
  return math.max(getAccess("@Swamp/05/Top"), math.min(getAccess("@Swamp/05/Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp04Left()
  return math.max(getAccess("@Swamp/3/Right"), getAccess("@Swamp/3/Bottom"), getAccess("@Swamp/3/Top"))
end

function Swamp05FuriousBlightx100()
  return math.min(getAccess("@Swamp/05/Left"), getAccess("aquatic"))
end

function Swamp05Top()
  return math.max(getAccess("@Swamp/04/Bottom"), math.min(getAccess("@Swamp/04/Left"), LEDGE_A()))
end

function Swamp05Right()
  return math.max(getAccess("@Swamp/06/Left"), getAccess("@Swamp/06/Lab2"))
end

function Swamp05Bottom()
  return getLocAccess("@Swamp/07/Right")
end

function Swamp05Left()
  return math.max(getAccess("@Swamp/09/Right2"), getAccess("@Swamp/09/Right1"))
end

function Swamp05StagnantBlightx30()
  return math.min(getAccess("@Swamp/05/Left"), getAccess("aquatic"))
end

function Swamp06VerbotenDomainNotice()
  return math.max(getAccess("@Swamp/06/Lab2"), getAccess("@Swamp/06/Left"), getAccess("@Swamp/06/Top"))
end

function Swamp06HereticsMask()
  return getLocAccess("@Swamp/06/Top")
end

function Swamp06StagnantBlightx30()
  return getLocAccess("@Swamp/06/Top")
end

function Swamp06Left()
  return math.max(getAccess("@Swamp/05/Right"), getAccess("@Swamp/05/Top"), math.min(getAccess("@Swamp/05/Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp06Top()
  return math.max(getAccess("@Oubliette/17/Bottom"), math.min(getAccess("@Oubliette/17/Right"), math.min(CHARGE_A(), getAccess("hammer"), math.max(math.min(getAccess("dodge2"), getAccess("claws")), getAccess("hook")))))
end

function Swamp07AmuletFragment()
  return math.min(getAccess("@Swamp/07/Right"), getAccess("claws"))
end

function Swamp07CaliviasRing()
  return math.min(getAccess("@Swamp/07/Left"), math.min(getAccess("claws"), LEDGE_A()))
end

function Swamp07Bottom()
  return math.max(getAccess("@Swamp/16/Top"), getAccess("@Swamp/16/Lab5"))
end

function Swamp07Right()
  return math.max(getAccess("@Swamp/05/Bottom"), math.min(getAccess("@Swamp/05/Left"), getAccess("aquatic"), CHARGE_A()))
end

function Swamp07Left()
  return math.max(getAccess("@Swamp/08/Right1"), math.min(getAccess("@Swamp/08/Right2"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2"))))), math.max(getAccess("djump"), HORIZONTAL_A())))
end

function Swamp07Top()
  return math.max(getAccess("@Swamp/3/Bottom"), getAccess("@Swamp/3/Top"), getAccess("@Swamp/3/Right"))
end

function Swamp08AmuletGem()
  return math.min(getAccess("@Swamp/08/Right2"), getAccess("aquatic"))
end

function Swamp08StagnantBlightx100()
  return math.min(getAccess("@Swamp/08/Right2"), getAccess("aquatic"))
end

function Swamp08FuriousBlightx100()
  return math.min(getAccess("@Swamp/08/Right2"), getAccess("aquatic"))
end

function Swamp08Right1()
  return getLocAccess("@Swamp/07/Left")
end

function Swamp08Right2()
  return math.max(getAccess("@Swamp/15/Left"), math.min(getAccess("@Swamp/15/Right"), LEDGE_A()))
end

function Swamp08Top()
  return math.max(getAccess("@Swamp/14/Bottom"), getAccess("@Swamp/14/Right"))
end

function Swamp09WeatheredNecklace()
  return math.min(getAccess("@Swamp/09/Right2"), math.max(LEDGE_A(), HORIZONTAL_A()))
end

function Swamp09StagnantBlightx30()
  return math.min(getAccess("@Swamp/09/Right1"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A()))
end

function Swamp09Bottom1()
  return math.max(getAccess("@Swamp/13/Top1"), math.min(getAccess("@Swamp/13/Bottom"), getAccess("claws"), LEDGE3_A()))
end

function Swamp09Right1()
  return math.max(getAccess("@Swamp/3/Left"), getAccess("@Swamp/3/Bottom"))
end

function Swamp09Bottom2()
  return getLocAccess("@Swamp/13/Top2")
end

function Swamp09Right2()
  return math.max(getAccess("@Swamp/05/Left"), getAccess("@Swamp/05/Right"))
end

function Swamp1FadensArchivesIII()
  return math.max(getAccess("@Swamp/1/Lab1"), getAccess("@Swamp/1/Bottom"), getAccess("@Swamp/1/Left"))
end

function Swamp1Bottom()
  return math.max(getAccess("@Swamp/3/Top"), math.min(getAccess("@Swamp/3/Left"), LEDGE_A()))
end

function Swamp1Left()
  return math.max(getAccess("@Swamp/2/Right"), math.min(getAccess("@Swamp/2/Top"), math.max(getAccess("dash"), getAccess("dodge2"))))
end

function Swamp10FadensArchivesIV()
  return getLocAccess("@Swamp/10/Right")
end

function Swamp10StagnantBlightx30()
  return math.min(getAccess("@Swamp/10/Lab3"), getAccess("aquatic"))
end

function Swamp10Right()
  return math.max(getAccess("@Swamp/13/Left"), math.min(getAccess("@Swamp/13/Top1"), getAccess("hammer")), math.min(getAccess("@Swamp/13/Top2"), CHARGE_A(), getAccess("hammer")))
end

function Swamp11AmuletFragment()
  return math.min(getAccess("@Swamp/11/Left"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), math.min(getAccess("silva"), getAccess("djump"))))
end

function Swamp11BlightedAppendage()
  return getLocAccess("@Swamp/11/Left")
end

function Swamp11Bottom()
  return math.max(getAccess("@Swamp/15/Top"), math.min(getAccess("@Swamp/15/Right"), math.max(getAccess("verboten"), getAccess("djump"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Swamp11Left()
  return math.max(getAccess("@Swamp/14/Right"), getAccess("@Swamp/14/Top"), math.min(getAccess("@Swamp/14/Bottom"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Swamp12PriestessWish()
  return math.min(getAccess("@Swamp/12/Lab4"), getAccess("hammer"))
end

function Swamp12FadensArchivesII()
  return math.max(getAccess("@Swamp/12/Left"), getAccess("@Swamp/12/Bottom"), getAccess("@Swamp/12/TP"))
end

function Swamp12Left()
  return math.max(getAccess("@Swamp/15/Right"), math.min(getAccess("@Swamp/15/Left"), math.max(getAccess("claws"), getAccess("hook"))), getAccess("@Swamp/15/Top"))
end

function Swamp12Bottom()
  return getLocAccess("@Abyss/04/Top")
end

function Swamp13AmuletFragment()
  return getLocAccess("@Swamp/13/Top2")
end

function Swamp13StagnantBlightx30()
  return math.max(math.min(getAccess("@Swamp/13/Top1"), getAccess("hammer")), math.min(getAccess("@Swamp/13/Top2"), CHARGE_A(), getAccess("hammer")))
end

function Swamp13FuriousBlightx30()
  return math.min(getAccess("@Swamp/13/Bottom"), math.max(getAccess("hook"), getAccess("claws")))
end

function Swamp13Left()
  return math.max(getAccess("@Swamp/10/Right"), getAccess("@Swamp/10/Lab3"))
end

function Swamp13Top1()
  return math.max(getAccess("@Swamp/09/Bottom1"), math.min(getAccess("@Swamp/09/Right1"), CHARGE_A()))
end

function Swamp13Top2()
  return math.max(getAccess("@Swamp/09/Bottom2"), getAccess("@Swamp/09/Right2"))
end

function Swamp13Bottom()
  return math.max(getAccess("@Swamp/14/Top"), math.min(getAccess("@Swamp/14/Bottom"), getAccess("claws"), LEDGE3_A()))
end

function Swamp14ChainofSorcery()
  return math.max(getAccess("@Swamp/14/Top"), math.min(getAccess("@Swamp/14/Bottom"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Swamp14StagnantBlightx100()
  return math.min(getAccess("@Swamp/14/Top"), math.max(LEDGE2_A(), getAccess("hook")))
end

function Swamp14Top()
  return math.max(getAccess("@Swamp/13/Bottom"), math.min(getAccess("hammer"), math.max(getAccess("@Swamp/13/Top1"), getAccess("@Swamp/13/Left"))))
end

function Swamp14Right()
  return math.max(getAccess("@Swamp/11/Left"), math.min(getAccess("@Swamp/11/Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE2_A()), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Swamp14Bottom()
  return math.max(getAccess("@Swamp/08/Top"), math.min(getAccess("@Swamp/08/Right2"), LEDGE_A()))
end

function Swamp15IncompetentSinnerFight()
  return math.min(getAccess("@Swamp/15/Left"), getAccess("aquatic"), getAccess("heretic"))
end

function Swamp15StagnantBlightx30()
  return getLocAccess("@Swamp/15/Top")
end

function Swamp15Top()
  return math.max(getAccess("@Swamp/11/Bottom"), getAccess("@Swamp/11/Left"))
end

function Swamp15Left()
  return math.max(getAccess("@Swamp/08/Right2"), getAccess("@Swamp/08/Top"), getAccess("@Swamp/08/Right1"))
end

function Swamp15Right()
  return math.max(getAccess("@Swamp/12/Left"), getAccess("@Swamp/12/Lab4"))
end

function Swamp16FadensArchivesI()
  return math.max(getAccess("@Swamp/16/Top"), getAccess("@Swamp/16/Left"))
end

function Swamp16Top()
  return math.max(getAccess("@Swamp/07/Bottom"), math.min(getAccess("@Swamp/07/Right"), getAccess("@Swamp/07/Left"), getAccess("@Swamp/07/Top")))
end

function Swamp16Left()
  return math.max(getAccess("@Swamp/17/Right"), getAccess("@Swamp/17/Left"))
end

function Swamp17Left()
  return math.max(getAccess("@Swamp/18/Right"), getAccess("@Swamp/18/Faden"))
end

function Swamp17Right()
  return math.max(getAccess("@Swamp/16/Left"), getAccess("@Swamp/16/Lab5"))
end

function Swamp18FindingMirielsBlightedLetter()
  return getLocAccess("@Swamp/18/Faden")
end

function Swamp18FindingFadensArchivesV()
  return getLocAccess("@Swamp/18/Faden")
end

function Swamp18Faden()
  return getLocAccess("@Swamp/18/Right")
end

function Swamp18StagnantBlightx800()
  return math.min(getAccess("@Swamp/18/Faden"), getAccess("claws"), math.max(LEDGE3_A(), math.min(getAccess("sinner"), LEDGE2_A()), FULLSILVA_A(), math.min(getAccess("dodge2"), getAccess("silva"), getAccess("verboten")), math.min(HORIZONTAL2_A(), getAccess("verboten"), getAccess("djump"))))
end

function Swamp18Bottom()
  return getLocAccess("@Abyss/01/Top")
end

function Swamp18Right()
  return math.max(getAccess("@Swamp/17/Left"), getAccess("@Swamp/17/Right"))
end

function Swamp2FuriousBlightx10()
  return getLocAccess("@Swamp/2/Top")
end

function Swamp2FuriousBlightx30()
  return math.min(getAccess("@Swamp/2/Top"), math.max(getAccess("claws"), math.min(LEDGE_A(), getAccess("hook"))))
end

function Swamp2Right()
  return math.max(getAccess("@Swamp/1/Left"), getAccess("@Swamp/1/Lab1"))
end

function Swamp2Top()
  return math.max(getAccess("@Forest/09/Left"), math.min(getAccess("@Forest/09/Top"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp3AmuletFragment()
  return math.min(getAccess("@Swamp/3/Top"), LEDGE_A())
end

function Swamp3StagnantBlightx30()
  return getLocAccess("@Swamp/3/Top")
end

function Swamp3Left()
  return math.max(getAccess("@Swamp/09/Right1"), math.min(getAccess("@Swamp/09/Right2"), math.max(LEDGE_A(), HORIZONTAL_A())))
end

function Swamp3Top()
  return math.max(getAccess("@Swamp/1/Bottom"), getAccess("@Swamp/1/Lab1"))
end

function Swamp3Right()
  return math.max(getAccess("@Swamp/04/Left"), math.min(getAccess("@Swamp/04/Bottom"), LEDGE_A()))
end

function Swamp3Bottom()
  return getLocAccess("@Swamp/07/Top")
end

function Village01Right()
  return math.max(getAccess("@Village/02/Left"), getAccess("@Village/02/Bottom"))
end

function Village01Bottom()
  return getLocAccess("@Church/08/Crossroads")
end

function Village02AmuletFragment()
  return getLocAccess("@Village/02/Left")
end

function Village02StagnantBlightx30()
  return math.min(getAccess("@Village/02/Left"), math.max(math.min(getAccess("djump"), math.max(getAccess("silva"), getAccess("verboten"))), math.min(math.max(getAccess("djump"), getAccess("silva")), HORIZONTAL_A()), getAccess("hook")))
end

function Village02StagnantBlightx10()
  return math.min(getAccess("@Village/02/Left"), math.max(LEDGE2_A(), math.min(getAccess("silva"), getAccess("dodge2")), math.min(getAccess("hook"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village02Right()
  return math.max(getAccess("@Village/03/Bottom1"), math.min(getAccess("@Village/03/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))))
end

function Village02Left()
  return math.max(getAccess("@Village/01/Right"), getAccess("@Village/01/Bottom"))
end

function Village02Bottom()
  return math.max(getAccess("@Village/13/Left"), getAccess("@Village/13/Right"))
end

function Village03AmuletFragment()
  return math.min(getAccess("hammer"), math.max(math.min(getAccess("@Village/03/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village/03/Bottom1"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village03BrokenMusicBox()
  return math.min(getAccess("@Village/03/Right"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash")))
end

function Village03StagnantBlightx10()
  return math.max(math.min(getAccess("@Village/03/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village/03/Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village03FuriousBlightx10()
  return math.min(getAccess("hammer"), math.max(math.min(getAccess("@Village/03/Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village/03/Bottom1"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village03Bottom1()
  return math.max(getAccess("@Village/02/Right"), getAccess("@Village/02/Bottom"), math.min(getAccess("@Village/02/Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village03Right()
  return math.max(getAccess("@Village/05/Left"), getAccess("@Village/05/CollapsedShack"))
end

function Village03Bottom2()
  return math.max(getAccess("@Village/13/Top"), math.min(getAccess("@Village/13/Right"), LEDGE_A()))
end

function Village04WesternMerchantFight()
  return getLocAccess("@Village/041/Bottom")
end

function Village041Bottom()
  return math.max(getAccess("@Village/04/Top"), getAccess("@Village/04/Right"))
end

function Village04AmuletFragment()
  return getLocAccess("@Village/04/Top")
end

function Village04BloodstainedRibbon()
  return math.min(getAccess("@Village/04/Right"), math.max(math.min(getAccess("hook"), math.max(LEDGE_A(), getAccess("claws"))), math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws"))))
end

function Village04Top()
  return getLocAccess("@Village/041/Bottom")
end

function Village04StagnantBlightx10()
  return getLocAccess("@Village/04/Top")
end

function Village04Right()
  return math.max(getAccess("@Village/05/Top"), getAccess("@Village/05/CollapsedShack"))
end

function Village05TrueBelieversNote()
  return math.max(getAccess("@Village/05/CollapsedShack"), getAccess("@Village/05/Top"), getAccess("@Village/05/Left"), getAccess("@Village/05/Right"))
end

function Village05Top()
  return math.max(getAccess("@Village/04/Right"), getAccess("@Village/04/Top"))
end

function Village05Left()
  return math.max(getAccess("@Village/03/Right"), math.min(getAccess("@Village/03/Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village05Right()
  return math.max(getAccess("@Village/06/Left"), math.min(getAccess("@Village/06/Right2"), LEDGE_A(), getAccess("claws")))
end

function Village06AmuletFragment()
  return getLocAccess("@Village/06/Left")
end

function Village06StagnantBlightx30()
  return math.min(getAccess("@Village/06/Right2"), math.max(LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws")), math.min(math.max(getAccess("silva"), getAccess("djump")), HORIZONTAL_A()), math.min(getAccess("verboten"), getAccess("sinner"))))
end

function Village06x2StagnantBlightsx10()
  return math.min(getAccess("@Village/06/Left"), getAccess("hammer"), math.max(LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws")), getAccess("hook")))
end

function Village06FuriousBlightx10()
  return math.min(getAccess("@Village/06/Left"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village06FuriousBlightx10_1()
  return math.min(getAccess("@Village/06/Left"), getAccess("hammer"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village06Left()
  return math.max(getAccess("@Village/05/Right"), getAccess("@Village/05/CollapsedShack"))
end

function Village06Right1()
  return math.max(getAccess("@Village/07/Left"), getAccess("@Village/07/Right"))
end

function Village06Bottom()
  return getLocAccess("@Village/12/Top")
end

function Village06Right2()
  return math.max(getAccess("@Village/08/Left"), getAccess("@Village/08/Right"))
end

function Village07ChainofSorcery()
  return getLocAccess("@Village/07/Left")
end

function Village07StagnantBlightx10()
  return getLocAccess("@Village/07/Left")
end

function Village07FuriousBlightx10()
  return math.min(getAccess("@Village/07/Left"), math.max(getAccess("hook"), LEDGE2_A()))
end

function Village07Left()
  return math.max(getAccess("@Village/06/Right1"), math.min(getAccess("@Village/06/Right2"), math.max(LEDGE_A(), HORIZONTAL_A())))
end

function Village07Right()
  return math.max(getAccess("@Village/09/Left1"), getAccess("@Village/09/BridgeHead"))
end

function Village07Top()
  return getLocAccess("@Village/14/Bottom")
end

function Village08HeadlessDefenderFight()
  return getLocAccess("@Village/08/Left")
end

function Village08AmuletFragment()
  return getLocAccess("@Village/08/Left")
end

function Village08StagnantBlightx10()
  return math.min(getAccess("@Village/08/Left"), getAccess("aquatic"))
end

function Village08Left()
  return math.max(getAccess("@Village/06/Right2"), math.min(getAccess("@Village/06/Left"), math.max(getAccess("hook"), LEDGE_A())), getAccess("@Village/06/Right1"))
end

function Village08Right()
  return math.max(getAccess("@Village/09/Left2"), getAccess("@Village/09/BridgeHead"))
end

function Village09AdherentsLetter()
  return getLocAccess("@Village/09/BridgeHead")
end

function Village09HamletRequestI()
  return math.max(getAccess("@Village/09/BridgeHead"), getAccess("@Village/09/Right1"), getAccess("@Village/09/Right2"), getAccess("@Village/09/Left1"), getAccess("@Village/09/Left2"))
end

function Village09Right1()
  return getLocAccess("@Village/10/Gerrod")
end

function Village09Right2()
  return math.max(getAccess("@Village/15/Left"), math.min(getAccess("@Village/15/Right"), getAccess("aquatic")))
end

function Village09Left1()
  return math.max(getAccess("@Village/07/Right"), getAccess("@Village/07/Left"), getAccess("@Village/07/Top"))
end

function Village09Left2()
  return math.max(getAccess("@Village/08/Right"), getAccess("@Village/08/Left"))
end

function Village10defeatGerrod()
  return math.max(getAccess("@Village/10/Left"), getAccess("@Village/10/Right"))
end

function Village10Left()
  return math.max(getAccess("@Village/09/Right1"), getAccess("@Village/09/BridgeHead"))
end

function Village10Right()
  return math.max(getAccess("@Village/11/Left"), math.min(getAccess("@Village/11/Right"), getAccess("claws")))
end

function Village11PriestessWish()
  return math.min(getAccess("@Village/111/Bottom"), getAccess("hammer"))
end

function Village111Bottom()
  return math.max(getAccess("@Village/11/Top"), getAccess("@Village/11/Left"))
end

function Village11HamletScrawl()
  return getLocAccess("@Village/11/Left")
end

function Village11HamletRequestII()
  return getLocAccess("@Village/11/Left")
end

function Village11Top()
  return getLocAccess("@Village/111/Bottom")
end

function Village11FuriousBlightx10()
  return getLocAccess("@Village/11/Left")
end

function Village11Left()
  return getLocAccess("@Village/10/Gerrod")
end

function Village11Right()
  return math.max(getAccess("@Castle/01/Left"), getAccess("@Castle/01/Dog"))
end

function Village12StagnantBlightx10()
  return getLocAccess("@Village/12/Left1")
end

function Village12Top()
  return math.max(getAccess("@Village/06/Bottom"), math.min(getAccess("@Village/06/Left"), getAccess("hammer")))
end

function Village12Left1()
  return math.max(getAccess("@Village/13/Right"), getAccess("@Village/13/Top"))
end

function Village12Right()
  return getLocAccess("@Cave/01/BottomOfTheWell")
end

function Village12Left2()
  return getLocAccess("@Village/16/Right")
end

function Village13AmuletGem()
  return math.min(getAccess("@Village/13/Right"), math.max(LEDGE2_A(), math.min(LEDGE_A(), math.max(getAccess("dash"), HORIZONTAL_A()))))
end

function Village13ChainofSorcery()
  return getLocAccess("@Village/13/Right")
end

function Village13GiantsRing()
  return math.min(getAccess("@Village/13/Left"), getAccess("aquatic"))
end

function Village13StagnantBlightx10()
  return getLocAccess("@Village/13/Left")
end

function Village13Top()
  return math.max(getAccess("@Village/03/Bottom2"), math.min(getAccess("@Village/03/Right"), getAccess("hammer")))
end

function Village13Left()
  return math.max(getAccess("@Village/02/Bottom"), getAccess("@Village/02/Right"))
end

function Village13Right()
  return math.max(getAccess("@Village/12/Left1"), math.min(getAccess("@Village/12/Right"), getAccess("@Village/12/Top")))
end

function Village14CliffsideHamletElderFight()
  return math.min(getAccess("@Village/14/Bottom"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village14StagnantBlightx30()
  return math.min(getAccess("@Village/14/Elder"), math.min(getAccess("hammer"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("silva"), math.max(getAccess("djump"), getAccess("dodge2"))), math.min(getAccess("verboten"), math.max(getAccess("dash"), getAccess("claws")), math.max(getAccess("silva"), getAccess("djump"))))))
end

function Village14FuriousBlightx30()
  return math.min(getAccess("@Village/14/Elder"), math.min(getAccess("hammer"), math.max(getAccess("hook"), LEDGE3_A(), FULLSILVA_A(), math.min(getAccess("claws"), LEDGE_A()))))
end

function Village14Bottom()
  return math.max(getAccess("@Village/07/Top"), math.min(getAccess("@Village/07/Right"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("djump"), math.max(getAccess("dodge2"), getAccess("silva"), getAccess("verboten"))), math.min(getAccess("dodge2"), math.max(getAccess("silva"), math.min(getAccess("verboten"), getAccess("dash")))))))
end

function Village15StagnantBlightx800()
  return math.max(math.min(getAccess("@Village/15/Left"), getAccess("aquatic"), math.max(math.min(getAccess("claws"), math.max(math.min(getAccess("sinner"), math.max(getAccess("djump"), getAccess("verboten"))), math.min(getAccess("dodge2"), getAccess("silva")), math.min(LEDGE2_A(), HORIZONTAL_A()))), math.min(getAccess("hook"), math.max(LEDGE2_A(), math.min(getAccess("claws"), math.max(LEDGE_A(), HORIZONTAL_A())))))), math.min(getAccess("@Village/15/Right"), getAccess("claws"), getAccess("djump"), getAccess("silva")))
end

function Village15StagnantBlightx30()
  return math.min(getAccess("@Village/15/Right"), getAccess("aquatic"))
end

function Village15FuriousBlightx10()
  return math.min(getAccess("@Village/15/Left"), getAccess("aquatic"))
end

function Village15Left()
  return math.max(getAccess("@Village/09/Right2"), math.min(getAccess("@Village/09/BridgeHead"), getAccess("aquatic")))
end

function Village15Right()
  return math.max(getAccess("@Fort/01/Left2"), math.min(getAccess("@Fort/01/Right"), getAccess("aquatic")))
end

function Village16FadensLetter()
  return getLocAccess("@Village/16/Right")
end

function Village16HamletStoneTabletFragment()
  return getLocAccess("@Village/16/Right")
end

function Village16Right()
  return math.max(getAccess("@Village/12/Left2"), math.min(getAccess("@Village/12/Left1"), CHARGE_A()))
end

function Cave11Right2()
  return getLocAccess("@Cave/18/Left2")
end

function Church01Top()
  return getLocAccess("@Church/09/Bottom2")
end

function Swamp12TP()
  return getLocAccess("@Abyss/05/Teleport")
end

function Castle18Top()
  return getLocAccess("@Castle/16/BottomLeft")
end

function Church13LuminantAegisCurio()
  return math.min(getAccess("@Church/13/Top"), math.max(getAccess("tabletAP", 7), math.min(getAccess("tabletch"), getAccess("tabletwt"), getAccess("tabletcc"), getAccess("tabletsa"), getAccess("tabletts"), getAccess("tabletrc"), getAccess("tabletvd"))))
end

