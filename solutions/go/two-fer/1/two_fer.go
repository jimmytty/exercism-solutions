// Package twofer implements a function to determine what you will say
// as you give away the extra cookie.
package twofer

// ShareWith receives a string as argument representing a person name
// and return a formatted string
func ShareWith(name string) string {
    if name != "" {
        return "One for " + name + ", one for me."
    }
    return "One for you, one for me."
}
