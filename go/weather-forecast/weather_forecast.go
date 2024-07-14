// Package weather provides tool to get current weather conditions based on location.
package weather

// CurrentCondition presents current weather condition for given location.
var CurrentCondition string

// CurrentLocation presents current location.
var CurrentLocation string

// Forecast returns a string that tells us current location and a corresponding condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
