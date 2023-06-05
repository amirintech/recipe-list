//
//  ContentView.swift
//  Recipe List
//
//  Created by Amir on 04/06/2023.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
