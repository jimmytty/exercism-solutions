module LuciansLusciousLasagna (
  elapsedTimeInMinutes,
  expectedMinutesInOven,
  preparationTimeInMinutes
) where

  -- TODO: define the expectedMinutesInOven constant
  expectedMinutesInOven :: Int
  expectedMinutesInOven = 40

  preparationTimePerLayer :: Int
  preparationTimePerLayer = 2
  -- TODO: define the preparationTimeInMinutes function
  preparationTimeInMinutes :: Int -> Int
  preparationTimeInMinutes numberOfLayers =
    numberOfLayers * preparationTimePerLayer
  
  -- TODO: define the elapsedTimeInMinutes function
  elapsedTimeInMinutes :: Int -> Int -> Int
  elapsedTimeInMinutes numberOfLayers actualTimeInOven =
    expectedMinutesInOven -
    actualTimeInOven      +
    preparationTimeInMinutes(numberOfLayers)
  
