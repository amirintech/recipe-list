//
//  RecipeView.swift
//  Recipe List
//
//  Created by Amir on 04/06/2023.
//

import Foundation

class RecipeView: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        recipes = getRecipes()
    }
    
    private func getRecipes() -> [Recipe] {
        if let url = Bundle.main.url(forResource: "recipes", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let parcedData = try JSONDecoder().decode([Recipe].self, from: data)
                return parcedData.map { item in
                    var item = item
                    item.id = UUID()
                    return item
                }
            }
            catch {
                print(error)
            }
        }
        
        return [Recipe]()
    }
}
