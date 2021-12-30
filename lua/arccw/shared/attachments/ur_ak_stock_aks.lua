att.PrintName = "Sidefolding Stock"
att.Icon = nil -- todo
att.Description = [[Side-folding stock found since the 74 series' debut. The triangular structure reduces its compromise on stability, but it is still less effective than a fixed stock. Folding the stock provides massively boosted maneuverability at the cost of severe recoil.

Toggling this stock modifies performance accordingly.]]
att.AutoStats = true
att.Slot = {"ur_ak_stock"}

att.ToggleSound = "arccw_uc/common/stockslide.ogg"
att.ExcludeFlags = {"mag_drum"}
att.ToggleStats = {
    {
        PrintName = "Extended",
        Mult_SightTime = .8,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 1.2,
        Mult_SightedSpeedMult = 1.05,
        ActivateElements = {"stock_aks"},
        AutoStats = true,
    },
    {
        PrintName = "Folded",
        Mult_SightTime = 0.6,
        Mult_DrawTime = 0.6,
        Mult_HolsterTime = 0.6,
        Mult_Recoil = 1.5,
        Mult_RecoilSide = 2,
        Mult_SightedSpeedMult = 1.2,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -9,
        Mult_Sway = 3,
        ActivateElements = {"stock_aks_folded"},
        AutoStats = true,
    }
}