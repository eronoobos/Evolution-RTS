-- UNITDEF -- EMETALEXTRACTOR --
--------------------------------------------------------------------------------

local unitName = "emetalextractor"

--------------------------------------------------------------------------------

local unitDef = {

  activateWhenBuilt  = true,
  buildAngle         = 2048,
  buildCostEnergy    = 0,
  buildCostMetal     = 20,
  builder            = false,
  buildTime          = 5,
  canAttack			 = false,
  category           = "BUILDING NOTAIR ECO",
  corpse             = "ammobox",
  description        = "Extracts Metal",
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_BUILDING",
  extractsMetal      = 0.0000001,
  makesMetal         = 0,
  footprintX         = 7,
  footprintZ         = 7,
  iconType           = "eco",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 500,
  maxSlope           = 60,
  maxWaterDepth      = 25,
  metalStorage       = 0,
  metalMake          = 0,
  name               = "(M)etal Extractor",
  objectName         = "emetalextractor2.s3o",
  onoffable          = true,
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "SMALL_BUILDING",
  selfDestructCountdown = 1,
  side               = "CORE",
  sightDistance      = 367,
  smoothAnim         = true,
  unitname           = "emetalextractor",
  workerTime         = 0,
  yardMap            = "ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo",
    sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:dirt",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdmex",
    },
  },
  weapons = {
    [1]  = {
      def                = "fusionfx",
    },
    [2]  = {
      def                = "fusionfx2",
    },
  },
  customParams = {
    needed_cover = 3,
    death_sounds = "generic",
	twokhotkey = 'm',
	armortype   = "building",
	normaltex = "unittextures/lego2skin_explorernormal.png",
	helptext = [[Metal Extractor

Extracts metal from exposed resource points on the map. Provides +1 metal income

+1 Metal]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=10,
	buildingGroundDecalSizeY=10,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[emetalextractor_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  fusionfx = {

    AreaOfEffect       = 0,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    rgbColor           = "0.8 0.5 0",
    rgbColor2          = "0.5 0.5 0.5",
    coreThickness      = 0.1,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:empty",
    fallOffRate        = 0.5,
    minintensity       = 1,
    impulseFactor      = 0,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "fake",
    noSelfDamage       = true,
    range              = 650,
    reloadtime         = 0.1,
    WeaponType         = "BeamLaser",
    selfprop           = true,
    soundTrigger       = true,
    startVelocity      = 1500,
    targetMoveError    = 0.3,
    thickness          = 1,
    turret             = true,
    weaponVelocity     = 1500,
    damage = {
      default            = 1E-06,
    },
  },
    fusionfx2 = {
    AreaOfEffect       = 0,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.5,
    duration           = 0.9,
    energypershot      = 0,
    explosionGenerator = "custom:empty",
    fallOffRate        = 0.5,
    fireStarter        = 50,
    
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "fake",
    range              = 500,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "0.5 0 0",
    rgbColor2          = "0.2 0.2 0.2",
    soundTrigger       = true,
    sweep              = "1",
    sweepfire          = true,
    targetMoveError    = 0.3,
    texture1           = "plasmaball",
    texture2           = "empty",
    thickness          = 2,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 300,
    damage = {
      default            = 1E-06,
    },
  },
}
unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------