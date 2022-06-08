//
//  File.swift
//  PuzzleBook
//
//  Created by Roland Schmitz on 06.06.22.
//

import Foundation
import SwiftUI


struct RecipeCollectionView: View {
    let collection: RecipeCollection
    @EnvironmentObject var navigation: NavigationModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(collection.categories, id: \.title) { recipeList in
                    NavigationLink(
                        tag: recipeList.title,
                        selection: $navigation.categorySelection,
                        destination: { RecipesCategoryView(category: recipeList) },
                        label: { Text(recipeList.title) }
                    )
                }
            }.navigationBarTitle("Categories")
        }
    }
}

struct RecipesCategoryView: View {
    let category: RecipeCategory
    @EnvironmentObject var navigation: NavigationModel
    
    var body: some View {
        List {
            ForEach(category.recipes, id: \.title) { recipe in
                NavigationLink(
                    tag: recipe.title,
                    selection: $navigation.recipeSelection,
                    destination: { RecipeView(recipe: recipe) },
                    label: { Text(recipe.title) }
                )
            }
        }.navigationBarTitle(category.title)
    }
}

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        List {
            Section {
                Text(recipe.info ?? "Some basic information about the recipe will be given here")
            }
            Section(header: Text("Ingredients")) {
                Text(recipe.ingredients ?? "The ingredients will be listed here" )
            }
            Section(header: Text("Preparation")) {
                Text(recipe.preparation ?? "Detailled instructions how to prepare the dish are expected here")
            }
        }
        .navigationBarTitle(recipe.title)
    }
}
