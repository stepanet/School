//
//  StartScene.swift
//  School
//
//  Created by Jack Sp@rroW on 23.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit
import GameplayKit

class StartScene: SKScene {

    override func didMove(to view: SKView) {
        
        self.anchorPoint = .zero
        let schoolLabel = SKLabelNode(text: "ШКОЛА")
        schoolLabel.fontColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        schoolLabel.fontName = "Helvetica Light"
        schoolLabel.fontSize = 26
        schoolLabel.position = CGPoint(x: self.size.width , y: self.size.height)
        self.addChild(schoolLabel)
        
        
        let waitLabel = SKLabelNode(text: "ЖДЕТ")
        waitLabel.fontColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        waitLabel.fontName = "Helvetica Light"
        waitLabel.fontSize = 26
        waitLabel.position = CGPoint(x: self.size.width , y: self.size.height)
        self.addChild(waitLabel)
        
        
        let movePoint = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        let movePointWait = CGPoint(x: self.size.width / 2, y: self.size.height / 2 - 100)
        let zoomLabel = SKAction.scale(by: 2, duration: 3 )
        let moveAction = SKAction.move(to: movePoint, duration: 3)
        let moveActionWait = SKAction.move(to: movePointWait, duration: 3)
        
        let groupActionWait = SKAction.group([zoomLabel,moveActionWait])
        let groupAction = SKAction.group([zoomLabel,moveAction])
        schoolLabel.run(groupAction)
        waitLabel.run(groupActionWait)

        
        
    }
    
    
}
