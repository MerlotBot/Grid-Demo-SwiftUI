//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        let chunkedDishes = dishes.chunked(into: 2)
        
        return List {
            // rows
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                    // columns
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageURL)
                        .resizable()
                        .scaledToFit()
                    }
                }
            }
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
