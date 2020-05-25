//
//  Cloud.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import SpriteKit

class Cloud: SKSpriteNode {
  
    
    
    static func showCloud(at point: CGPoint, pointTo: CGPoint, returnPoint: CGPoint) -> (Cloud) {
        
        let cloud = Cloud(imageNamed: "cloud")
        cloud.setScale(0.5)
        cloud.zPosition = 2
        cloud.position = point
        cloud.run(actionSprite(to: pointTo, cloud: cloud, returnPoint: returnPoint))
        return (cloud)
    }
    
    
    static func sizeSprite() -> CGSize {
        let cloud = School(imageNamed: "cloud")
        let size = cloud.size
        return size
    }
    
    fileprivate static func actionSprite (to point: CGPoint, cloud: Cloud, returnPoint: CGPoint) -> SKAction {

        let moveActionCloud = SKAction.move(to: point, duration: 4)
        let moveActionCloudReturn = SKAction.move(to: returnPoint, duration: 4)
        let moveCloud = SKAction.sequence([moveActionCloud,moveActionCloudReturn])
        
        let action = SKAction.group([

            moveCloud,
            SKAction.scale(to: CGSize(width: cloud.size.width / 2, height: cloud.size.height / 2 ), duration: 4)
            
        ])
        return action
    }
}
