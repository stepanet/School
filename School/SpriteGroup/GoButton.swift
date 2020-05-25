//
//  GoButton.swift
//  School
//
//  Created by Пятин Дмитрий on 26.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class GoButton: SKSpriteNode {

    static func showGoBtn(at point: CGPoint, pointTo: CGPoint) -> GoButton {
        
        let goBtn = GoButton(imageNamed: "btn")
        goBtn.setScale(0.1)
        goBtn.zPosition = 2
        goBtn.position = point
        goBtn.run(actionSprite(to: pointTo))
        return goBtn
    }
    
    fileprivate static func actionSprite (to point: CGPoint) -> SKAction {
        
        let action = SKAction.group([
            SKAction.scale(by: 10, duration: 1),
            SKAction.move(to: point, duration: 1)
        ])
        return action
    }
    
}
