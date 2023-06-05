//
//  Recipe.swift
//  Recipe List
//
//  Created by Amir on 04/06/2023.
//

import Foundation

struct Recipe: Identifiable, Decodable {
    var id: UUID?
    let name: String
    let featured: Bool
    let image: String
    let description: String
    let prepTime: String
    let cookTime: String
    let totalTime: String
    let servings: Int
    let ingredients: [String]
    let directions: [String]
}
