-- UNITDEF -- ETRANSPORT --
--------------------------------------------------------------------------------

local unitName = "etransport"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 0.2,
  brakeRate          = 5,
  buildCostEnergy    = 0,
  buildCostMetal     = 40,
  builder            = false,
  buildTime          = 2.5,
  canAttack          = false,
  canFly             = true,
  canGuard           = false,
  canMove            = true,
  canload            = true,
  canPatrol          = false,
  canstop            = "1",
  category           = "ARMORED VTOL",
  collide            = false,
  corpse             = "ammobox",
  cruiseAlt          = 150,
  description        = [[Fast Armored Transport
Armored

Requires +2 Power]],
  energyMake         = 0,
  energyUse          = 0,
  explodeAs          = "HUGE_UNIT",
  fallSpeed          = 1000,
  footprintX         = 4,
  footprintZ         = 4,
  holdSteady         = true,
--  hoverAttack        = true,
  icontype           = "air",
  maxAcc             = 0.3,
  maxDamage          = 340,
  maxSlope           = 60,
  maxVelocity        = 18,
  verticalSpeed		 = 15,
  name               = "Charter",
  objectName         = "etransport.s3o",
  releaseHeld        = true,
  repairable		 = false,
  selfDestructAs     = "HUGE_UNIT",
  side               = "GD",
  sightDistance      = 250,
  smoothAnim         = true,
  transportCapacity  = 1,
  transportMass      = 10000,
  transportSize      = 6,
--  transportUnloadMethod = 1,
  turnRate           = 900,
  unitname           = "etransport",
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:jethtrail",
	  "custom:blacksmoke",
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
   customParams = {
--    needed_cover = 2,
	death_sounds = "soldier",
    RequireTech = "2 Power",
	armortype   = "armored",
	normaltex = "unittextures/etransport2normal.png", 
  },
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
