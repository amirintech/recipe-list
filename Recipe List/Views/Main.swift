//
//  Main.swift
//  Recipe List
//
//  Created by Amir on 05/06/2023.
//

import SwiftUI

struct Main: View {
    @State var tabIdx = 0
    var body: some View {
        TabView(selection: $tabIdx) {
            Text("Featured Recipes")
                .font(.title)
                .fontWeight(.bold)
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
                .tag(0)
            
            RecipeList()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("All Recipes")
                }
                .tag(1)
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
