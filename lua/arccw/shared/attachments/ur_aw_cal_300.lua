att.PrintName = "AWM .300 Winchester Magnum Receiver"
att.AbbrevName = ".300 Win Mag"
att.Icon = nil
att.Description = "Versatile magnum cartridge identical in diameter to 7.62x51mm rounds but with significantly higher muzzle energy. Liable to overpenetration at close range."
att.Slot = "ur_aw_cal"
att.Desc_Pros = {
}

att.AutoStats = true

att.Mult_Damage = 44 / 75
att.Mult_DamageMin = 85 / 40
att.Mult_Range = 2

att.Override_PhysBulletMuzzleVelocity = 1000

att.Mult_Penetration = 1.25
att.Mult_Recoil = 1.5

att.Mult_ShootSpeedMult = 0.9

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

att.Override_Trivia_Calibre = ".300 Winchester Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_338"}
att.ActivateElements = {"mag_338"}