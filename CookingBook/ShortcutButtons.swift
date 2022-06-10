//
//  File.swift
//  CookingBook
//
//  Created by Roland Schmitz on 07.06.22.
//

import Foundation
import SwiftUI

struct ShortcutButtons: View {
    @Binding var selection: NavigationSelection

    var body: some View {
        VStack {
            Button("Categories") {
                print("Categories")
                selection = NavigationSelection(category: nil, recipe: nil)
            }
            .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
            HStack {
                VStack {
                    Button("Starters") {
                        print("Starters")
                        selection = NavigationSelection(category: "Starters", recipe: nil)
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Bruschetta") {
                            print("Bruschetta")
                            selection = NavigationSelection(category: "Starters", recipe: "Bruschetta")
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Caprese") {
                            print("Caprese")
                            selection = NavigationSelection(category: "Starters", recipe: "Mozzarella Caprese")
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
                VStack {
                    Button("Main Dishes") {
                        print("Main Dishes")
                        selection = NavigationSelection(category: "Main Dishes", recipe: nil)
                    }
                    .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    HStack {
                        Button("Carbonara") {
                            print("Carbonara")
                            selection = NavigationSelection(category: "Main Dishes", recipe: "Spaghetti Carbonara")
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                        Button("Bolognese") {
                            print("Bolognese")
                            selection = NavigationSelection(category: "Main Dishes", recipe: "Ragu alla Bolognese")
                        }
                        .padding(5).background(Color(.systemGray6)).cornerRadius(10).padding(5)
                    }
                }
            }
        }
    }
}
