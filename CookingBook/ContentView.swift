//
//  ContentView.swift
//  CookingBook
//
//  Created by Roland Schmitz on 07.06.22.
//

import SwiftUI

class NavigationModel: ObservableObject {
    @Published var categorySelection: String?
    @Published var recipeSelection: String?
}

struct ContentView: View {
    @State var recipes = sampleRecipeCollection
    @StateObject var navigation = NavigationModel()

    var body: some View {
        VStack {
            RecipeCollectionView(collection: recipes)
            ShortcutButtons()
        }.environmentObject(navigation)
    }

}
