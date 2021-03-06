-- maeksmoke

return {
  ["maeksmoke"] = {
    dirtg = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        alwaysvisible      = true,
        colormap           = [[0.20 0.20 0.20 1.0 0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0 0, 0]],
        numparticles       = 4,
        particlelife       = 50,
        particlelifespread = 5,
        particlesize       = 2,
        particlesizespread = 10,
        particlespeed      = 10,
        particlespeedspread = 2,
        pos                = [[0.5 0.5, 1 2, 0.5 0.5]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[new_dirta]],
        useairlos          = false,
      },
    },
    dirtw = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.7,
        alwaysvisible      = true,
        colormap           = [[1 1 1 0.5 0.5 0.5 0.5 0.8  0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0 0, 0]],
        numparticles       = 10,
        particlelife       = 50,
        particlelifespread = 5,
        particlesize       = 2,
        particlesizespread = 2,
        particlespeed      = 10,
        particlespeedspread = 2,
        pos                = [[0.5 0.5, 1 2, 0.5 0.5]],
        sizegrowth         = -0.2,
        sizemod            = 1,
        texture            = [[new_dirta]],
        useairlos          = false,
      },
    },
  },

}

