//
//  waterView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI
 

struct waterView: View {
    var body: some View {
        ZStack{
        Image("water_bg")
               .resizable()
               .edgesIgnoringSafeArea(.all)
      
        }
    }
}

struct waterView_Previews: PreviewProvider {
    static var previews: some View {
        waterView()
    }
}
