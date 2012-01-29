-- UNITDEF -- EALLTERRASSAULT --
--------------------------------------------------------------------------------

local unitName = "eallterrassault"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 0.18,
  brakeRate          = 0.2,
  buildCostEnergy    = 0,
  buildCostMetal     = 65,
  builder            = false,
  buildTime          = 10,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "NOTAIR SKIRMISHER",
  corpse             = "ammobox",
  
-- Cloaking

	cancloak		 = true,
	cloakCost		 = 2,
	decloakDistance	 = 100,
	decloakOnFire	 = true,
	decloakSpherical = true,
	startCloaked	 = false,
	
-- End Cloaking
  
  description        =[[Armored Assault Tank - Damagetype: Explosive :: Armortype: Heavy

Requires +10 Power]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "HUGE_UNIT",
  firestandorders    = "1",
  footprintX         = 6,
  footprintZ         = 6,
  iconType           = "allterr",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 650,
  maxVelocity        = 2.5,
  maxReverseVelocity = 1,
  turninplacespeedlimit = 2.5,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "ALLTERRTANK6",
  name               = "(A)nvil",
  noChaseCategory    = "VTOL",
  objectName         = "eallterrassault.s3o",
  radarDistance      = 0,
  selfDestructAs     = "HUGE_UNIT",
  shootme            = "1",
  sightDistance      = 800,
  smoothAnim         = true,
  stealth			 = true,
  seismicSignature   = 6,
  turnInPlace        = true,
  turnRate           = 1000,
  unitname           = "eallterrassault",
  unitnumber         = "110",
  upright            = false,
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:gdhcannon",
      "custom:dirtsmall",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "assaulttankcannon",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
  },
   customParams = {
    needed_cover = 4,
   	death_sounds = "soldier",
	twokhotkey = 'a',
    RequireTech = "10 Power",
	armortype   = "heavyarmor",
	normaltex = "unittextures/lego2skin_explorernormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  assaulttankcannon = {
    areaOfEffect       = 50,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.6,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.4,
    energypershot      = 40,
    explosionGenerator = "custom:burn",
    fallOffRate        = 1,
    fireStarter        = 100,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 750,
    reloadtime         = 2.5,
    WeaponType         = "LaserCannon",
    rgbColor           = "0.5 0 1",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "allterrassaultshot.wav",
    soundHit           = "assaultshothit.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 9,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 250,
	customparams = {
	  damagetype		= "Explosive",  
    }, 
    damage = {
      default           = 400,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------

