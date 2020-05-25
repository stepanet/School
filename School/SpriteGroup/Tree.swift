//
//  Tree.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class Tree: SKSpriteNode {
    
    static func showTree(at point: CGPoint, pointTo: CGPoint, imageName: String, zPosition: CGFloat, scale: CGFloat, scaleTo: CGFloat, duration: TimeInterval = 1) -> Tree {
        
        let tree = Tree(imageNamed: imageName)
        tree.setScale(scale)
        tree.zPosition = zPosition
        tree.position = point
        tree.run(actionSprite(to: pointTo, scale: scaleTo, duration: duration))
        return tree
    }
    
    fileprivate static func actionSprite (to point: CGPoint, scale: CGFloat, duration: TimeInterval) -> SKAction {

        let action = SKAction.group([
            SKAction.scale(by: 1.5, duration: duration),
           SKAction.move(to: point, duration: duration)
        ])
        return action
    }
    
}
