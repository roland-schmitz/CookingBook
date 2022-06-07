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
            HStack {
                Button("Starters") {
                    print("Starters")
                    categorySelection = "Starters"
                    recipeSelection = nil
                }
                Group {
                    Button("Bruschetta") {
                        print("Bruschetta")
                        categorySelection = "Starters"
                        recipeSelection = "Bruschetta"
                    }
                    Button("Caprese") {
                        print("Caprese")
                        categorySelection = "Starters"
                        recipeSelection = "Mozzarella Caprese"
                    }
                }.padding(.leading)
            }
            HStack {
                Button("Main Dishes") {
                    print("Main Dishes")
                    categorySelection = "Main Dishes"
                    recipeSelection = nil
                }
                Group {
                    Button("Carbonara") {
                        print("Carbonara")
                        categorySelection = "Main Dishes"
                        recipeSelection = "Spaghetti Carbonara"
                    }
                    Button("Bolognese") {
                        print("Bolognese")
                        categorySelection = "Main Dishes"
                        recipeSelection = "Ragu alla Bolognese"
                    }
                }.padding(.leading)
            }
        }
    }
}
