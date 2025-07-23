package lasagna

// TODO: define the 'OvenTime' constant
const OvenTime = 40
const preparationMinutesPerLayer = 2

// RemainingOvenTime returns the remaining minutes based on the
// `actual` minutes already in the oven.
func RemainingOvenTime(actualMinutesInOven int) int {
	return OvenTime - actualMinutesInOven
}

// PreparationTime calculates the time needed to prepare the lasagna
// based on the amount of layers.
func PreparationTime(numberOfLayers int) int {
	return numberOfLayers * preparationMinutesPerLayer
}

// ElapsedTime calculates the total time needed to create and bake a
// lasagna.
func ElapsedTime(numberOfLayers, actualMinutesInOven int) int {
	// panic("ElapsedTime not implemented")
	var remainingTime int = RemainingOvenTime(actualMinutesInOven)
	var perLayerTime  int = PreparationTime(numberOfLayers)
	return OvenTime - remainingTime + perLayerTime
}
