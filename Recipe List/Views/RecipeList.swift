//
//  ContentView.swift
//  Recipe List
//
//  Created by Amir on 04/06/2023.
//

import SwiftUI

struct RecipeList: View {
    @ObservedObject private var model = RecipeView()
    
    var body: some View {
        NavigationView {
            List(model.recipes) { recipe in
                NavigationLink {
                    RecipeDetails(recipe: recipe)
                } label: {
                    HStack(spacing: 20.0) {
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill().frame(width: 60, height: 60, alignment: .center).clipped()
                            .cornerRadius(10)
                        
                        Text(recipe.name)
                    }
                }

                
            }.navigationTitle(Text("All Recipes"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
