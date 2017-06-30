//
//  StartScene.swift
//  DrowsyDrivingFinal
//
//  Created by Quinn Rifkin on 6/30/17.
//  Copyright © 2017 UserFreedom. All rights reserved.
//

import UIKit
import SpriteKit

class StartScene: SKScene {
    
    override func didMove(to view: SKView){
        let particlePath = Bundle.main.path(forResource: "SparkEmitter", ofType: "sks")!
        let particle = NSKeyedUnarchiver.unarchiveObject(withFile: particlePath) as! SKEmitterNode
        particle.position = CGPoint.zero
        particle.targetNode = self
        addChild(particle)
    }

}
