att.PrintName = "12\" Carbine Barrel"
att.Icon = nil -- todo
att.Description = "Reduced length barrel that serves as a middle ground between full-size and SMG-length barrels. Reduces weight and profile while keeping the weapon accurate and controllable."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 12

att.Mult_Sway = .85
att.Mult_SightTime = .8
att.Add_BarrelLength = -3
att.Mult_SightedSpeedMult = 1.05

att.Mult_Recoil = 1.3
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = .75

att.ToggleStats = {
    {
        PrintName = "Black",
        ActivateElements = {"barrel_105"},
    },
    {
        PrintName = "Plum",
        ActivateElements = {"barrel_105_red"},
    },
    {
        PrintName = "Olive Drab",
        ActivateElements = {"barrel_105_green"},
    },
}

att.GivesFlags = {"ak_barrelchange","nodong"}