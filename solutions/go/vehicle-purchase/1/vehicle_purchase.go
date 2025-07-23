package purchase

func NeedsLicense(kind string) bool {
    if kind == "car" || kind == "truck" {
        return true
    }
    return false
}

func ChooseVehicle(option1, option2 string) string {
    if option1 < option2 {
        return option1 + " is clearly the better choice."
    }
    return option2 + " is clearly the better choice."
}

func CalculateResellPrice(originalPrice, age float64) float64 {
    if age < 3 {
        return originalPrice * 80 / 100
    } else if age < 10 {
        return originalPrice * 70 / 100
    } else {
        return originalPrice * 50 / 100
    }
}
