//
//  fireView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct fireView: View {
    var body: some View {
       Image("fire_bg")
        .resizable()
        .edgesIgnoringSafeArea(.all)
    }
}

struct fireView_Previews: PreviewProvider {
    static var previews: some View {
        fireView()
    }
}
