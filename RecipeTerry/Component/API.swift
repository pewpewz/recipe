//
//  API.swift
//  RecipeTerry
//
//  Created by Terry Lee on 3/11/25.
//

import Foundation

class API {
    
    func fetchNetwork() async throws -> Models {
        
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json")!)
        
        print("data: \(data)")
        return try JSONDecoder().decode(Models.self, from: data)
    }
}
