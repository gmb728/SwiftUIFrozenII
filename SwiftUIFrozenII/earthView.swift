//
//  earthView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct earthView: View {
    var body: some View {
       Image("earth_bg")
               .resizable()
               .edgesIgnoringSafeArea(.all)
    }
}

struct earthView_Previews: PreviewProvider {
    static var previews: some View {
        earthView()
    }
}
