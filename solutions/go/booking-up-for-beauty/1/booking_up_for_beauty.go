package booking

import "time"

func parseDate(layout, date string) time.Time {
    t, err := time.Parse(layout, date)
    if err != nil {
        panic(err)
    }
    return t
}

// Schedule returns a time.Time from a string containing a date.
func Schedule(date string) time.Time {
    layout := "1/2/2006 15:04:05"
    return parseDate(layout, date)
}

// HasPassed returns whether a date has passed.
func HasPassed(date string) bool {
    layout := "January 2, 2006 15:04:05"
    t      := parseDate(layout, date)
    return time.Now().After(t)
}

// IsAfternoonAppointment returns whether a time is in the afternoon.
func IsAfternoonAppointment(date string) bool {
    layout := "Monday, January 2, 2006 15:04:05"
    t      := parseDate(layout, date)
    hhmm   := t.Hour() * 100 + t.Minute()
    return hhmm >= 1200 && hhmm < 1800
}

// Description returns a formatted string of the appointment time.
func Description(date string) string {
    t := Schedule(date)
    description := t.Format("Monday, January 2, 2006, at 15:04.")
    description  = "You have an appointment on " + description
    return description
}

// AnniversaryDate returns a Time with this year's anniversary.
func AnniversaryDate() time.Time {
    date := time.Date(time.Now().Year(), 9, 15, 0, 0, 0, 0, time.UTC)
    return date
}
