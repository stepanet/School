//
//  School.swift
//  School
//
//  Created by Пятин Дмитрий on 25.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//


import SpriteKit

class School: SKSpriteNode {

    static func showSchool(at point: CGPoint, to pointTo: CGPoint) -> School {
        //school
        let school = School(imageNamed: "school")
        school.setScale(0.9)
        school.zPosition = -2
        school.position = point
        school.run(actionSprite(to: pointTo))
        return school
    }
    
    static func sizeSprite() -> CGSize {
        let school = School(imageNamed: "school")
        let size = school.size
        return size
    }
    
    
    fileprivate static func actionSprite (to point: CGPoint) -> SKAction {
        
        let action = SKAction.group([
            SKAction.scale(by: 1, duration: 1 ),
            SKAction.move(to: point, duration: 1)
        ])
        return action
    }
}

