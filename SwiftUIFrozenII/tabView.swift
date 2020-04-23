//
//  tabView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct tabView: View {
    var body: some View {
          ZStack{
                    TabView {
                             ContentView()
                                .tabItem {
                                Image("drop")
                                    .renderingMode(.template)
                                    Text("Elsa")
                                }
                           
                               airView()
                                   .tabItem {
                                       Image("air")
                                       .renderingMode(.template)
                                       Text("air")
                               }
                               earthView()
                                   .tabItem {
                                       Image("earth")
                                       .renderingMode(.template)
                                       Text("earth")
                               }
                               fireView()
                                   .tabItem {
                                       Image("fire")
                                       .renderingMode(.template)
                                       Text("earth")
                               }
                              waterView()
                                   .tabItem {
                                       Image("water")
                                        .renderingMode(.template)
                                         Text("water")
                                       
                               }
                              
                          
                       }
                        
                      
                                         
                }
                                  .accentColor(.blue)
            }
        }
     

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
