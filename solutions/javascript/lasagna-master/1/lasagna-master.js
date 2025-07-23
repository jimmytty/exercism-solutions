/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Determine whether the lasagna is done
 */
export function cookingStatus(remainingTime) {
    let status
    if ( remainingTime === undefined ) {
        status = 'You forgot to set the timer.'
    } else if ( remainingTime === 0 ) {
        status = 'Lasagna is done.'
    } else {
        status = 'Not done, please wait.'
    }
    return status
}

/**
 * Estimate the preparation time
 */
export function preparationTime(
    layers = [], averagePreparationTimePerLayer = 2
) {
    return layers.length * averagePreparationTimePerLayer
}

/**
 * Compute the amounts of noodles and sauce needed
 */
export function quantities(layers = []) {
    let adds = {
        noodles: 50,
        sauce: 0.2,
    }
    let amounts = {
        noodles: 0,
        sauce:   0,
    }
    for ( let i in layers ) {
        if ( adds.hasOwnProperty(layers[i]) ) {
            amounts[layers[i]] += adds[layers[i]]
        }
    }
    return amounts
}

/**
 * Add the secret ingredient
 */
export function addSecretIngredient(
    friendIngredients = [], ownIngredients = []
) {
    ownIngredients.push(friendIngredients[friendIngredients.length - 1])
}

/**
 * Scale the recipe
 */
export function scaleRecipe(recipeForTwoPortions, numberOfPortions) {
    let recipe     = {}
    let multiplier = numberOfPortions / 2
    for ( let item in recipeForTwoPortions ) {
        recipe[item] = recipeForTwoPortions[item] * multiplier;
    }
    return recipe
}
