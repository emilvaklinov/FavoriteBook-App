//
//  FavoriteModel.swift
//  FavoriteBook App
//
//  Created by Emil Vaklinov on 12/06/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

let metallica = FavoriteElements(name: "Metallica", imagename: "metallica", description: "No 1 Music Band")
let pinkfloyd = FavoriteElements(name: "Pink Floyd", imagename: "pinkfloyd", description: "No 2 Music Band")
let greenday = FavoriteElements(name: "Green Day", imagename: "greenday", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, pinkfloyd, greenday])
