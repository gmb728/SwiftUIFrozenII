//
//  airView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct airView: View {
  
    var body: some View {
       
        Image("air_bg")
        .resizable()
        .edgesIgnoringSafeArea(.all)
     
      
    }
}

struct airView_Previews: PreviewProvider {
    static var previews: some View {
        airView()
    }
}
