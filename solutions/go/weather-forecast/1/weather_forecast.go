// Package weather provides forecast functionalities.
package weather

// CurrentCondition package variable represents weather's
// current condition.
var CurrentCondition string

// CurrentLocation package variable represents current location.
var CurrentLocation string

// Forecast function accept two string arguments, city and condition,
// and returns a string.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
