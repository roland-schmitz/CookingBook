    //
    //  File.swift
    //  PuzzleBook
    //
    //  Created by Roland Schmitz on 06.06.22.
    //

import Foundation
import SwiftUI

struct RecipeCollection {
    let categories: [RecipeCategory]
}

struct RecipeCategory {
    let title: String
    let recipes: [Recipe]
}

struct Recipe {
    let title: String
    var info: String?
    var ingredients: String?
    var preparation: String?
}

let sampleRecipeCollection = RecipeCollection(
    categories: [
        RecipeCategory(
            title: "Starters",
            recipes: [
                Recipe(title: "Bruschetta"),
                Recipe(title: "Mozzarella Caprese"),
                Recipe(title: "Melanzane al Forno"),
            ]
        ),
        RecipeCategory(
            title: "Main Dishes",
            recipes: [
                Recipe(title: "Pizza Margherita"),
                Recipe(title: "Spaghetti Carbonara"),
                Recipe(title: "Ragu alla Bolognese"),
            ]
        ),
        RecipeCategory(
            title: "Desserts",
            recipes: [
                Recipe(title: "Tiramisu"),
                Recipe(title: "Panna Cotta"),
                Recipe(title: "Zabaione"),
            ]
        )
    ]
)

