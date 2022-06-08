//
//  File.swift
//  CookingBook
//
//  Created by Roland Schmitz on 07.06.22.
//

import Foundation
import SwiftUI

struct ShortcutButtons: View {
    @Binding var categorySelection: String?
    @Binding var recipeSelection: String?

    var body: some View {
        VStack {
            Button("Categories") {
                print("Categories")
                categorySelection = nil
                recipeSelection = nil
            }
            .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
            HStack {
                VStack {
                    Button("Starters") {
                        print("Starters")
                        recipeSelection = nil
                        // categorySelection = "Starters"
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Bruschetta") {
                            print("Bruschetta")
                            categorySelection = "Starters"
                            recipeSelection = "Bruschetta"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Caprese") {
                            print("Caprese")
                            categorySelection = "Starters"
                            recipeSelection = "Mozzarella Caprese"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
                VStack {
                    Button("Main Dishes") {
                        print("Main Dishes")
                        categorySelection = "Main Dishes"
                        recipeSelection = nil
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Carbonara") {
                            print("Carbonara")
                            categorySelection = "Main Dishes"
                            recipeSelection = "Spaghetti Carbonara"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Bolognese") {
                            print("Bolognese")
                            categorySelection = "Main Dishes"
                            recipeSelection = "Ragu alla Bolognese"
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
            }
        }
    }
}
