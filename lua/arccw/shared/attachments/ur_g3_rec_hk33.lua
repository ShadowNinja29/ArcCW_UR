att.PrintName = "HK33 5.56x45mm Receiver"
att.AbbrevName = "HK33 5.56 Receiver"
att.Description = "Receiver and barrel group that accepts an intermediate cartridge, changing the weapon into an assault rifle."
att.Icon = Material("entities/att/ur_g3/rec_33.png","smooth mips")
att.Slot = "ur_g3_rec"
att.AutoStats = true

att.SortOrder = 12


att.Override_ClipSize = 30

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_RPM = 650 / 520 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = 0.3
att.Mult_HipDispersion = .75

att.Mult_Penetration = 14 / 20
att.Mult_DamageMin = 20 / 35
att.Mult_Damage = 34 / 65
att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1

att.GivesFlags = {"cal_556"}

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

local path = ")^weapons/arccw_ur/g3/"
local path1 = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    --[[if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end]]
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return {path1 .. "fire-dist-01.ogg", path1 .. "fire-dist-02.ogg", path1 .. "fire-dist-03.ogg", path1 .. "fire-dist-04.ogg", path1 .. "fire-dist-05.ogg", path1 .. "fire-dist-06.ogg"} end
end


local slotinfo = {
    [9] = {"30-Round 5.56 Mag", "30-Round 5.56 Mag", Material("entities/att/ur_g3/mag556_30.png", "mips smooth")},
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


-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim .. "_30rnd"
-- end