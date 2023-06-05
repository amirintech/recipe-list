//
//  RecipeDetails.swift
//  Recipe List
//
//  Created by Amir on 04/06/2023.
//

import SwiftUI

struct RecipeDetails: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.top, 20)
                        .padding(.bottom, 5)
                    
                    ForEach(recipe.ingredients, id: \.self) { ing in
                        Text("- " + ing)
                            .padding(.bottom, 1)
                            
                    }
                }.padding()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions: ")
                        .font(.headline)
                        .padding(.top, 20)
                        .padding(.bottom, 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { i in
                        Text(String(i + 1) + ") " + recipe.directions[i])
                            .padding(.bottom, 1)
                    }
                }.padding()
            }.navigationBarTitle(recipe.name)
        }
    }
}

struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: RecipeView().recipes[0])
    }
}
