module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earhSeconds :: Int
earhSeconds = 31557600

ageOn :: Planet -> Int -> Float
ageOn planet seconds =
  case planet of
    Earth   -> fromIntegral seconds / fromIntegral earhSeconds / 1.0
    Mercury -> fromIntegral seconds / fromIntegral earhSeconds / 0.2408467
    Venus   -> fromIntegral seconds / fromIntegral earhSeconds / 0.61519726
    Mars    -> fromIntegral seconds / fromIntegral earhSeconds / 1.8808158
    Jupiter -> fromIntegral seconds / fromIntegral earhSeconds / 11.862615
    Saturn  -> fromIntegral seconds / fromIntegral earhSeconds / 29.447498
    Uranus  -> fromIntegral seconds / fromIntegral earhSeconds / 84.016846
    Neptune -> fromIntegral seconds / fromIntegral earhSeconds / 164.79132

