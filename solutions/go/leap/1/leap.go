// Package leap implements a function to determine if an arbitrary
// year is leap year in the Gregoriam calendar
package leap

// IsLeapYear receives a year as int and return a boolean true for
// leap year and false otherwise
func IsLeapYear(year int) bool {
    if year % 100 == 0 && year % 400 != 0 {
        return false
    }

    if year % 4 == 0 { return true }

    return false
}
