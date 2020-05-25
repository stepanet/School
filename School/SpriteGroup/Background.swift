//
//  Background.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class Background: SKSpriteNode {

    static func showBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "back")
        background.position = point
        background.zPosition = -3
        background.setScale(0.75)
        return background
    }
    
}
