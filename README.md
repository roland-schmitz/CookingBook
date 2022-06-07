# CookingBook.swiftpm

Sample with programmatically controlled nested navigation in SwiftUI

This sample uses a NavigationView with nested NavigationLink to first navigate
to a recipe category (Starters, Main Dishes, Desserts) and than navigate to a specific recipe in that category.

The current selection for the two levels of navigation is stored in two corresponding @State variables through some bindings.

On the bottom of the screen there are some shortcut buttons to directly navigate to a specific recipe or category.
Using these buttons does not always work. 
For example tapping on "Bruschetta" and then on "Starters" does not navigate to "Starters", but when you tap on "Carbonara" and then on "Starters" it works.

How can I fix this?

