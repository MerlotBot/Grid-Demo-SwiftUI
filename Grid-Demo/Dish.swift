//
//  Dish.swift
//  Grid-Demo
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish {
    
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}

extension Dish: Identifiable {
    
    static func all() -> [Dish] {
        
        return [
            Dish(name: "Fillet Mignon", price: 35, imageURL: "a1"),
            Dish(name: "Spagetti Meatballs", price: 12, imageURL: "e2"),
            Dish(name: "Sushi", price: 15, imageURL: "e1"),
            Dish(name: "Chocolate cake", price: 11, imageURL: "d1"),
            Dish(name: "Lemon Cake", price: 10, imageURL: "e1")

        ]
    }
}
