--[[ Sunwell_Plateau_Mobs.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, June 28, 2008. ]]

-- Sunblade Arch Mage.
function Arch_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Arch_Arcane", 6000, 0)
	pUnit:RegisterEvent("Arch_Fnova", 12000, 0)
end

function Arch_Arcane(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46553,pUnit:GetClosestPlayer())
end

function Arch_Fnova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46555,pUnit:GetClosestPlayer())
end

-- Sunblade Cabalist.
function Cabalist_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Cabalist_Shadow", 2000, 0)
	pUnit:RegisterEvent("Cabalist_Ignite", 7000, 0)
	pUnit:RegisterEvent("Cabalist_Imp", 80000, 0)
end

function Cabalist_Shadow(pUnit,Event)
	pUnit:FullCastSpellOnTarget(47248,pUnit:GetMainTank())
end

function Cabalist_Ignite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(47248,pUnit:GetRandomPlayer())
end

function Cabalist_Imp(pUnit,Event)
	pUnit:CastSpell(46544)
end

-- Sunblade Dawn Priest.
function DawnPriest_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(46565) -- Holy Form
	pUnit:RegisterEvent("DawnPriest_Renew", 2000, 0)

	pUnit:RegisterEvent("DawnPriest_Hnova", 2000, 0)
end

function DawnPriest_Hnova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46564,pUnit:GetClosestPlayer())
end

function DawnPriest_Renew(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46563,pUnit:GetRandomFriend())
	pUnit:CastSpell(46563)
end

-- Sunblade Dragonhawk.
function DragonHawk_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DragonHawk_Breath", 3500, 0)
end

function DragonHawk_Breath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(47251,pUnit:GetClosestPlayer())
end

-- Sunblade Dusk Priest.
function DuskPriest_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DuskPriest_SWP", 30000, 0)
	pUnit:RegisterEvent("DuskPriest_MindFlay", 20000, 0)
	pUnit:RegisterEvent("DuskPriest_Fear", 60000, 0)
end

function DuskPriest_SWP(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46560,pUnit:GetClosestPlayer())
end

function DuskPriest_MindFlay(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46562,pUnit:GetClosestPlayer())
end

function DuskPriest_Fear(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46561,pUnit:GetClosestPlayer())

end

-- Sunblade Protector
function Protector_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Protector_Fel", 3000, 0)
end

function Protector_Fel(pUnit,Event)

	pUnit:FullCastSpellOnTarget(46480,pUnit:GetClosestPlayer())
end

-- Sunblade Scout
function Scout_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Scount_Strike", 6000, 0)
end

function Scout_Strike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46558,pUnit:GetClosestPlayer())

end

-- Sunblade Slayer
function Slayer_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(47001,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Slayer_SlayShot", 11000, 0)
end

function Slayer_SlayShot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46557,pUnit:GetClosestPlayer())
end

-- Sunblade Vindicator
function Vind_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Vind_Strike", 120000, 0)
	pUnit:RegisterEvent("Vind_Cleave", 9000, 0)
end

function Vind_Strike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39171,pUnit:GetClosestPlayer())
end

function Vind_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46559,pUnit:GetClosestPlayer())
end

-- Shadowsword Assassin
function Assassin_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46463,pUnit:GetClosestPlayer())
end

-- Shadowsword Lifeshaper
function Lifeshaper_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("LifeShaper_HealthF", 60000, 0)
	pUnit:RegisterEvent("LifeShaper_Drain", 40000, 0)
end

function LifeShaper_HealthF(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46467,pUnit:GetRandomFriend())
end

function LifeShaper_Drain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46466,pUnit:GetClosestPlayer())
end

-- Shadowsword Manafiend
function Manafiend_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Manafiend_ArcExplosion", 9000, 0)
	pUnit:RegisterEvent("Manafiend_DrainMana", 60000, 0)
end

function Manafiend_ArcExplosion(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46457,pUnit:GetClosestPlayer())
end

function Manafiend_DrainMana(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46453,pUnit:GetClosestPlayer())
end

-- Shadowsword Soulbinder
function Soulbinder_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Manafiend_CoE", 30000, 0)
	pUnit:RegisterEvent("Manafiend_FoD", 11000, 0)
end

function Soulbinder_FoD(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46442,pUnit:GetClosestPlayer())
end

function Soulbinder_CoE(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46434,pUnit:GetClosestPlayer())
end

-- Shadowsword Vanquisher
function SVanq_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SVanq_Cleave", 15000, 0)
	pUnit:RegisterEvent("SVanq_Melt", 60000, 0)
end

function SVanq_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46468,pUnit:GetClosestPlayer())
end

function SVanq_Melt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46469,pUnit:GetClosestPlayer())
end

-- Apocalypse Guard
function ApocGuard_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(46287)
	pUnit:RegisterEvent("ApocGuard_DeathCoil", 8000, 0)
	pUnit:RegisterEvent("ApocGuard_CorStrike", 12000, 0)
	pUnit:RegisterEvent("ApocGuard_Cleave", 60000, 0)
end

function ApocGuard_DeathCoil(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46283,pUnit:GetClosestPlayer())
end

function ApocGuard_CorStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(45029,pUnit:GetClosestPlayer())
end

function ApocGuard_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(40504,pUnit:GetClosestPlayer())
end

-- Cataclysm Hound
function CataHound_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CataHound_Frenzy", 1000, 0)
	pUnit:RegisterEvent("CataHound_CataBreath", 8000, 0)
end

function CataHound_Frenzy(pUnit,Event)
	pUnit:FullCastSpellOnTarget(47399,pUnit:GetClosestPlayer())
end

function CataHound_CataBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46292,pUnit:GetClosestPlayer())
end

-- Chaos Gazer
function ChaosG_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ChaosG_Petrify", 11000, 0)
	pUnit:RegisterEvent("ChaosG_TentacleSweep", 1000, 0)
end

function ChaosG_Petrify(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46288,pUnit:GetClosestPlayer())
end

function ChaosG_TentacleSweep(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46290,pUnit:GetClosestPlayer())
end

-- Doomfire Destroyer
function DoomfireD_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(25592)
end

-- Oblivion Mage
function OblivMage_OnEnterCombat(pUnit,Event)

	pUnit:RegisterEvent("OblivMage_FlameBuffet", 3000, 0)
	pUnit:RegisterEvent("OblivMage_Poly", 70000, 0)
end

function OblivMage_FlameBuffet(pUnit,Event)

	pUnit:FullCastSpellOnTarget(46279,pUnit:GetClosestPlayer())
end

function OblivMage_Poly(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46280,pUnit:GetClosestPlayer())
end

-- Priestess of Torment
function PoT_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46271,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("OblivMage_Whirlwind2", 7000, 0)
end

function PoT_Whirlwind2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46270,pUnit:GetClosestPlayer())
end

-- Volatile Fiend
function VolFiend_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("VolFiend_FelFire", 7000, 0)
end

function VolFiend_FelFire(pUnit,Event)
	pUnit:FullCastSpellOnTarget(45779,pUnit:GetClosestPlayer())
end

-- Volatile FelFire Fiend
function VolFelFiend_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("VolFelFiend_FelFire", 7000, 0)
end

function VolFelFiend_FelFire(pUnit,Event)
	pUnit:FullCastSpellOnTarget(45779,pUnit:GetClosestPlayer())
end

-- Shadowsword Berserker
function Berserker_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46160,pUnit:GetClosestPlayer())
end

-- Shadowsword Fury Mage
function FuryMage_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(46102)
	pUnit:RegisterEvent("FuryMage_FelFireball", 7000, 0)
end

function FuryMage_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46101,pUnit:GetClosestPlayer())
end

-- Void Sentinel
function VoidSentinel_OnEnterCombat(pUnit,Event)

	pUnit:CastSpell(46087)
	pUnit:RegisterEvent("VoidSentinel_VoidBlast", 7000, 0)
end

function VoidSentinel_VoidBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46161,pUnit:GetClosestPlayer())
end

-- Void Spawn
function VoidSpawn_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("VoidSpawn_ShadowBolt", 4000, 0)
end

function VoidSpawn_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46082,pUnit:GetClosestPlayer())
end

-- Shadowsword Commander
function Commander_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Commander_SheildSlam", 3000, 0)
	pUnit:RegisterEvent("Commander_BattleShout", 40000, 0)
end

function Commander_SheildSlam(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46762,pUnit:GetClosestPlayer())
end

function Commander_BattleShout(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46763,pUnit:GetClosestPlayer())
end

-- Shadowsword Deathbringer
function Deathbringer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Deathbringer_Spell", 6000, 0)
end

function Deathbringer_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46481,pUnit:GetClosestPlayer())
end

-- Shadowsword Guardian
function Guardian_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46239,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Guardian_Earthquake", 20000, 0)
end

function Guardian_Earthquake(pUnit,Event)
	pUnit:FullCastSpellOnTarget(46240,pUnit:GetClosestPlayer())
end

-- Hand of The Deceiver
function Deceiver_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Deceiver_Bolt", 4000, 0)
end

function Deceiver_Bolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(45770,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(25367, 1, "Arch_OnEnterCombat")
RegisterUnitEvent(25363, 1, "Cabalist_OnEnterCombat")
RegisterUnitEvent(25371, 1, "DawnPriest_OnEnterCombat")

RegisterUnitEvent(25867, 1, "DragonHawk_OnEnterCombat")

RegisterUnitEvent(25370, 1, "DuskPriest_OnEnterCombat")

RegisterUnitEvent(25507, 1, "Protector_OnEnterCombat")

RegisterUnitEvent(25372, 1, "Scout_OnEnterCombat")

RegisterUnitEvent(25368, 1, "Slayer_OnEnterCombat")
RegisterUnitEvent(25369, 1, "Vind_OnEnterCombat")

RegisterUnitEvent(25484, 1, "Assassin_OnEnterCombat")
RegisterUnitEvent(25506, 1, "Lifeshaper_OnEnterCombat")
RegisterUnitEvent(25483, 1, "Manafiend_OnEnterCombat")
RegisterUnitEvent(25373, 1, "Soulbinder_OnEnterCombat")
RegisterUnitEvent(25486, 1, "SVanq_OnEnterCombat")
RegisterUnitEvent(25593, 1, "ApocGuard_OnEnterCombat")
RegisterUnitEvent(25599, 1, "CataHound_OnEnterCombat")
RegisterUnitEvent(25595, 1, "ChaosG_OnEnterCombat")
RegisterUnitEvent(25592, 1, "DoomfireD_OnEnterCombat")
RegisterUnitEvent(25597, 1, "OblivMage_OnEnterCombat")

RegisterUnitEvent(25509, 1, "PoT_OnEnterCombat")

RegisterUnitEvent(25851, 1, "VolFiend_OnEnterCombat")
RegisterUnitEvent(25598, 1, "VolFelFiend_OnEnterCombat")

RegisterUnitEvent(25798, 1, "Berserker_OnEnterCombat")

RegisterUnitEvent(25799, 1, "FuryMage_OnEnterCombat")
RegisterUnitEvent(25772, 1, "VoidSentinel_OnEnterCombat")
RegisterUnitEvent(25824, 1, "VoidSpawn_OnEnterCombat")

RegisterUnitEvent(25837, 1, "Commander_OnEnterCombat")
RegisterUnitEvent(25485, 1, "Deathbringer_OnEnterCombat")

RegisterUnitEvent(25508, 1, "Guardian_OnEnterCombat")
RegisterUnitEvent(25588, 1, "Deceiver_OnEnterCombat")