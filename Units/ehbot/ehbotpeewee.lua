-- UNITDEF -- ehbotpeewee --
--------------------------------------------------------------------------------

local unitName                   = "ehbotpeewee"

--------------------------------------------------------------------------------

local power						 = [[6 power]]
local armortype					 = [[light]]
local supply					 = [[3]]

local weapon1Damage              = 5
local weapon1AOE				 = 1
local energycosttofire			 = weapon1Damage / 10 * ((weapon1AOE / 1000) + 1)

local function roundToFirstDecimal(energycosttofire)
    return math.floor(energycosttofire*10 + 0.5)*0.1
end

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;
	--**

	acceleration                 = 1,
	brakeRate                    = 0.1,
	buildCostEnergy              = 0,
	buildCostMetal               = 27,
	builder                      = false,
	buildTime                    = 5,
	canAttack                    = true,
	cancollect                   = "1",
	canGuard                     = true,
	canHover                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "LIGHT NOTAIR RAID",
	corpse                       = "ammobox",
	description                  = [[Unit Type: Raider 
Armortype: ]] ..armortype.. [[ 

45 Damage vs Light/Armored
60 Damage vs Building 

Energy cost to fire: ]] .. roundToFirstDecimal(energycosttofire) .. [[ 

Requires +]] .. power .. [[ 
Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "smallExplosionGenericBlue",
	footprintX                   = 3,
	footprintZ                   = 3,
	iconType                     = "raider",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 200,
	maxSlope                     = 26,
	maxVelocity                  = 10,
	maxReverseVelocity           = 2,
	maxWaterDepth                = 10,
	metalStorage                 = 0,
	movementClass                = "HOVERHBOT3",
	name                         = "PeeWee",
	noChaseCategory              = "VTOL",
	objectName                   = "ehbotpeewee2.s3o",
	script						 = "ehbotpeewee_lus.lua",
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "smallExplosionGenericBlue",
	side                         = "CORE",
	sightDistance                = 600,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	--  turnInPlace              = false,
	--  turnInPlaceSpeedLimit    = 5.5,
	turnInPlace                  = true,
	turnRate                     = 5000,
	--  turnrate                 = 475,
	unitname                     = "ehbotpeewee",
	upright                      = true,
	workerTime                   = 0,

	sfxtypes                     = {
		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirt",
			"custom:blacksmoke",
			"custom:airfactoryhtrail",
		},
		pieceExplosionGenerators = {
			"deathceg3",
			"deathceg4",
		},	
	},

	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "flashweapon",
--			mainDir = "0 0 1", -- x:0 y:0 z:1 => that's forward!
--			maxAngleDif = 70,
			badTargetCategory    = "VTOL ARMORED WALL",
		},
	},
	customParams                 = {
		canbetransported 		 = "true",
		needed_cover             = 1,
		death_sounds             = "generic",
		RequireTech              = power,
		armortype                = armortype,
		nofriendlyfire	         = "1",
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
		helptext                 = [[]],
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weaponDefs                 = {
	flashweapon                = {
		AreaOfEffect           = weapon1AOE,
		avoidFriendly          = false,
		collideFriendly        = false,
		rgbColor               = "0.8 0.5 0",
		rgbColor2              = "0.5 0.5 0.5",
		explosionGenerator     = "custom:genericshellexplosion-medium-sparks-burn",
		energypershot          = energycosttofire,
		name                   = "E.M.G.",
		range                  = 600,
		reloadtime             = 0.1,
		weaponType		       = "Cannon",
		soundStart             = "tgunshipfire.wav",
		soundTrigger           = true,
		sprayAngle             = 0,
		tolerance              = 1000,
		turret                 = true,
		weaponTimer            = 1,
		weaponVelocity         = 1200,
		damage                   = {
			default              = weapon1Damage,
		},
	},
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
