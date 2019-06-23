//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        List {
            // rows
            ForEach(0..<6) { _ in
                HStack {
                    //columns
                    ForEach(0..<2) { _ in
                        Image("d1")
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
