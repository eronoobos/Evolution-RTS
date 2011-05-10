-- UNITDEF -- EALLTERRHEAVY --
--------------------------------------------------------------------------------

local unitName = "eallterrheavy"

--------------------------------------------------------------------------------

local unitDef = {
--Begin tags entered from Notepad++ en masse
  pieceTrailCEGTag   = "deathceg",
  pieceTrailCEGRange = 2,
--End tags entered from Notepad++
  acceleration       = 0.18,
  brakeRate          = 0.2,
  buildCostEnergy    = 0,
  buildCostMetal     = 30,
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
  
  description        =[[Armored Skirmish Tank - Damagetype: Medium :: Armortype: Medium

Requires +6 Power]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "HUGE_UNIT",
  firestandorders    = "1",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "allterr",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 300,
  maxVelocity        = 2.8,
  maxReverseVelocity = 1,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "ALLTERRTANK4",
  name               = "(S)ledge",
  noChaseCategory    = "VTOL",
  objectName         = "eallterrheavy2.s3o",
  radarDistance      = 0,
  selfDestructAs     = "HUGE_UNIT",
  shootme            = "1",
  sightDistance      = 600,
  smoothAnim         = true,
  stealth			 = true,
  seismicSignature   = 4,
  turnInPlace        = true,
  turnRate           = 1000,
  unitname           = "eallterrheavy",
  unitnumber         = "110",
  upright            = false,
  workerTime         = 0,
  sfxtypes = {
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
      def                = "heavytankweapon",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
  },
   customParams = {
   	death_sounds = "soldier",
	twokhotkey = 's',
    RequireTech = "6 Power",
	armortype   = "mediumarmor",
	normaltex = "unittextures/lego2skin_explorernormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  heavytankweapon = {
    areaOfEffect       = 200,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.5,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.2,
    energypershot      = 12,
    explosionGenerator = "custom:MEDMECHPOP",
    fallOffRate        = 1,
    fireStarter        = 50,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 700,
    reloadtime         = 1.2,
    WeaponType         = "LaserCannon",
    rgbColor           = "0 1 0",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "allterrheavyshot.wav",
    soundHit           = "mediumcannonhit.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 9,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 800,
	customparams = {
	  damagetype		= "medium",  
    }, 
    damage = {
      default           = 120,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------

