//
//  Child.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class Child: SKSpriteNode {
    
    static func showChild(at point: CGPoint, pointTo: CGPoint) -> Child {
        
        let child = Child(imageNamed: "student")
        child.setScale(0.5)
        child.zPosition = 2
        child.position = point
        child.run(actionSprite(to: pointTo))

        return child
    }
    
    fileprivate static func actionSprite (to point: CGPoint) -> SKAction {
        
        let action = SKAction.group([
            SKAction.scale(to: CGSize(width: 100, height: 100), duration: 8),
            SKAction.move(to: point, duration: 8)
        ])
        return action
    }
}
