att.PrintName = "AWM .338 Lapua Magnum Receiver"
att.AbbrevName = ".338 Lapua Magnum"
att.Icon = nil
att.Description = "Powerful sniper cartridge that exerts substantially more muzzle energy, practically guaranteed to be fatal on a successful hit beyond point blank. The recoil is tremendous, and the lengthened bolt required to accommodate the cartridge is harder to cycle."
att.Slot = "ur_aw_cal"

att.AutoStats = true

att.Mult_Damage = 80 / 75
att.Mult_DamageMin = 160 / 40
att.Mult_Range = 2.5

att.Override_PhysBulletMuzzleVelocity = 1000

att.Mult_Penetration = 2
att.Mult_Recoil = 2
att.Mult_CycleTime = 1.25
att.Mult_ReloadTime = 1.15

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

att.Override_Trivia_Calibre = ".338 Lapua Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_338"}
att.ActivateElements = {"mag_338"}