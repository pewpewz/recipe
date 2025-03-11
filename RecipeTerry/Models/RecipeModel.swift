//
//  RecipeModel.swift
//  RecipeTerry
//
//  Created by Terry Lee on 3/11/25.
//

import Foundation

struct Models: Codable {
    let recipes: [RecipeModel]
}

struct RecipeModel: Codable {
    let cuisine: String
    let name: String
    let photo_url_large: String
    let photo_url_small: String
    let source_url: String?
    let uuid: String
    let youtube_url: String?
}
