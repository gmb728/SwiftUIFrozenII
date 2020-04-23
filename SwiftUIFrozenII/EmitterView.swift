//
//  ContentView.swift
//  SwiftUIFrozenII
//
//  Created by Chang Sophia on 4/22/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI
import SpriteKit

 
struct EmitterView: UIViewRepresentable {
   
    /**
    makeUIView and updateUIView are required methods of the UIViewRepresentable
    protocol. makeUIView does just what you'd think - makes the view we want.

    updateUIView allows you to update the view with new data, but we don't need
    it for our purposes.
    */
    func makeUIView(context: UIViewRepresentableContext<EmitterView>) -> SKView {
        // Create our SKView
        let view = SKView()
        // We want the view to animate the particle effect over our SwiftUI view
        // and let its components show through so we'll set allowsTransparenty to true.
        view.allowsTransparency = true
        // Load our custom SKScene
        if let scene = SnowScene(fileNamed: "spark") {
            // We need to set the background to clear.
            scene.backgroundColor =  .clear
            view.presentScene(scene)
        }
        return view
    }

    func updateUIView(_ uiView: SKView, context: UIViewRepresentableContext<EmitterView>) {

    }

}

/**
This is our SKScene subclass that will present the emitter node.
*/
class SnowScene: SKScene {
    override func didMove(to view: SKView) {
       super.didMove(to: view)

       // Create our SKEmitterNode with a particle effect named "love"
       // More info about creating particle effects in Xcode is
       // linked at the end of the article.
       if let emitter: SKEmitterNode = SKEmitterNode(fileNamed: "spark") {
            // Set the initial alpha of the node to 0, as we're going to fade it in.
            emitter.alpha = 0
            // Add the emitter node to the scene
            addChild(emitter)
            // Fade the node in with a duration of half a second.
            emitter.run(SKAction.fadeIn(withDuration: 0.5)) {
                // Fade the node out with a duration of 5 seconds.
                emitter.run(SKAction.fadeOut(withDuration: 5.0)) {
                    // Clean up our emitter node.
                    emitter.removeFromParent()
                    // Tell our SwiftUI view that the animation has finished.
                }
            }
        }
    }

}

struct EmitterView_Previews: PreviewProvider {
    static var previews: some View {
        EmitterView()
    }
}
