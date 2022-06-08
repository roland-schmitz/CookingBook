//
//  File.swift
//  CookingBook
//
//  Created by Roland Schmitz on 07.06.22.
//

import Foundation
import SwiftUI

struct ShortcutButtons: View {
    @EnvironmentObject var navigation: NavigationModel

    var body: some View {
        VStack {
            Button("Categories") {
                print("Categories")
                navigation.categorySelection = nil
                navigation.recipeSelection = nil
            }
            .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
            HStack {
                VStack {
                    Button("Starters") {
                        print("Starters")
                        navigation.recipeSelection = nil
                        navigation.categorySelection = "Starters"
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Bruschetta") {
                            print("Bruschetta")
                            navigation.categorySelection = "Starters"
                            navigation.recipeSelection = "Bruschetta"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Caprese") {
                            print("Caprese")
                            navigation.categorySelection = "Starters"
                            navigation.recipeSelection = "Mozzarella Caprese"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
                VStack {
                    Button("Main Dishes") {
                        print("Main Dishes")
                        navigation.categorySelection = "Main Dishes"
                        navigation.recipeSelection = nil
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Carbonara") {
                            print("Carbonara")
                            navigation.categorySelection = "Main Dishes"
                            navigation.recipeSelection = "Spaghetti Carbonara"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Bolognese") {
                            print("Bolognese")
                            navigation.categorySelection = "Main Dishes"
                            navigation.recipeSelection = "Ragu alla Bolognese"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
            }
        }
    }
}
