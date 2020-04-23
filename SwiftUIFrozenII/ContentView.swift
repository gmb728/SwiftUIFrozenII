//
//  ContentView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/23/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI
import SpriteKit
struct ContentView: View {
    var body: some View {
        ZStack {
           Image("fifth_bg")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            EmitterView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
