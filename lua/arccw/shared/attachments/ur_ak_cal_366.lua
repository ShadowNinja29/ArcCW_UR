att.PrintName = "Vepr .366 TKM Receiver"
att.AbbrevName = ".366 TKM Receiver"

att.Icon = nil -- todo
att.Description = "Hunting round based on 7.62x39mm, with much stronger ranged ballistics than the parent cartridge. Rifles chambered for it are exclusively produced for the civilian market, and are therefore semi-automatic only."

att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_ak_cal"
att.AutoStats = true

att.Mult_Damage = 1.1
att.Mult_DamageMin = 1.5
att.Mult_Range = 1.75
att.Mult_PrecisionMOA = .75
att.Mult_Penetration = 1.5
att.Mult_ReloadTime = .9

att.Mult_RPM = 0.75
att.Mult_Recoil = 1.5
att.Override_ClipSize = 10
att.Mult_ShootVol = 130 / 125


att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10rnd"
end

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Override_ShellModel = "models/weapons/arccw/uc_shells/366tkm.mdl"
att.Override_ShellScale = 1
att.Override_Trivia_Class = "Rifle"
att.Override_Trivia_Calibre = ".366 TKM"
att.ActivateElements = {"mag_366"}
att.GivesFlags = {"cal_366"}

local path = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire_366_1.ogg", path .. "fire_366_2.ogg", path .. "fire_366_3.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_366_sup.ogg" end
end

local slotinfo = {
    [5] = {"10-Round Mag", "10-Round Mag", Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end