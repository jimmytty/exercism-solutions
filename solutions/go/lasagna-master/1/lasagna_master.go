package lasagna

// define the 'PreparationTime()' function
func PreparationTime(layers []string, averageMinutes int) (prepTime int) {
    if averageMinutes == 0 {
        averageMinutes = 2
    }
    prepTime = len(layers) * averageMinutes
    return
}

// define the 'Quantities()' function
func Quantities(layers []string) (noodles int, sauce float64) {
    noodles = 0
    sauce   = 0
    for i := 0; i < len(layers); i++ {
        switch layers[i] {
        case "noodles": noodles += 1
        case "sauce"  :   sauce += 1.0
        }
    }
    noodles *= 50
    sauce   *=  0.2
    return
}

// define the 'AddSecretIngredient()' function
func AddSecretIngredient(frindList, myList []string) {
    secretIngredient := frindList[len(frindList) - 1]
    myList[len(myList) - 1] = secretIngredient
}

// define the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, portions int) []float64 {
    amounts := make([]float64, len(quantities))
    scale := float64(portions) / 2.0
    for i := 0; i < len(quantities); i++ {
        amounts[i] = quantities[i] * scale
    }
    return amounts
}
