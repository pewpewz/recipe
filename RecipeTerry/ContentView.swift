//
//  ContentView.swift
//  RecipeTerry
//
//  Created by Terry Lee on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var api = API()
    
    @State var models: Models?
    @State var recipeModels: [RecipeModel]?

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            do {
                self.models = try await api.fetchNetwork()
                print("models: \(self.models)")
            } catch {
                print("not available")
            }
        }
    }
}

#Preview {
    ContentView()
}
