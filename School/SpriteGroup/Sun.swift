//
//  Sun.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class Sun: SKSpriteNode {

    static func showSun(at point: CGPoint, pointTo: CGPoint) -> Sun {
        
        let sun = Sun(imageNamed: "sun")
        sun.setScale(0.02)
        sun.zPosition = -3
        sun.position = point
        sun.run(actionSprite(to: pointTo, sun: sun))
        return sun
    }
    
    fileprivate static func actionSprite (to point: CGPoint, sun: Sun) -> SKAction {
        
        let action = SKAction.group([
            SKAction.move(to: point, duration: 3),
            SKAction.scale(to: CGSize(width: sun.size.width * 2, height: sun.size.height * 2 ), duration: 3)
        ])
        return action
    }
    
}
