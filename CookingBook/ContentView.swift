//
//  ContentView.swift
//  CookingBook
//
//  Created by Roland Schmitz on 07.06.22.
//

import SwiftUI

struct NavigationSelection: Equatable {
    var category: String?
    var recipe: String?
}

struct ContentView: View {
    @State var recipes = sampleRecipeCollection
    @State var selection = NavigationSelection(category: nil, recipe: nil)

    var body: some View {
        VStack {
            RecipeCollectionView(collection: recipes, categorySelection: $selection.category, recipeSelection: $selection.recipe)
            ShortcutButtons(selection: $selection)
        }
    }

}
