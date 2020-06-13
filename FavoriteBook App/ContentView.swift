//
//  ContentView.swift
//  FavoriteBook App
//
//  Created by Emil Vaklinov on 12/06/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
        
        List {
            
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { element in
                        NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                           Text(element.name)
                        }
                    }
                }
            }
            
            
            
        }.navigationBarTitle(Text("Favorite Book"))
    }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
