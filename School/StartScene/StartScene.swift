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
        
        
//        let schoolLabel = SKLabelNode(text: "ШКОЛА")
//        schoolLabel.fontColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
//        schoolLabel.fontName = "Helvetica Light"
//        schoolLabel.fontSize = 26
//        schoolLabel.position = CGPoint(x: self.size.width , y: self.size.height)
//        self.addChild(schoolLabel)
//
//        let waitLabel = SKLabelNode(text: "ЖДЕТ")
//        waitLabel.fontColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
//        waitLabel.fontName = "Helvetica Light"
//        waitLabel.fontSize = 26
//        waitLabel.position = CGPoint(x: self.size.width , y: self.size.height)
//        self.addChild(waitLabel)
        
    
        
        //school
        let school = SKSpriteNode(imageNamed: "school")
        school.setScale(0.9)
        school.zPosition = -2
        print(school.size)
        school.position = CGPoint(x: self.size.width , y: self.size.height)
        self.addChild(school)
        
        //child
        let child = SKSpriteNode(imageNamed: "child")
        child.setScale(0.2)
        child.zPosition = 2
        print(child.size)
        child.position = CGPoint(x: self.size.width + child.size.width, y: 0)
        self.addChild(child)
        
        //tree
        let tree = SKSpriteNode(imageNamed: "tree")
        tree.setScale(0.05)
        tree.zPosition = -1
        print(tree.size)
        tree.position = CGPoint(x: 0 , y: self.size.height / 3)
        self.addChild(tree)
        
        //tree
        let tree1 = SKSpriteNode(imageNamed: "tree")
        tree1.setScale(0.05)
        tree1.zPosition = 1
        print(tree1.size)
        tree1.position = CGPoint(x: self.size.width , y: self.size.height / 3)
        self.addChild(tree1)
        
        //flower
        let flower = SKSpriteNode(imageNamed: "flower")
        flower.setScale(0.5)
        flower.zPosition = -0
        print(flower.size)
        flower.position = CGPoint(x: self.size.width + flower.size.width , y: self.size.height / 2.5)
        self.addChild(flower)
        
        //back
        let back = SKSpriteNode(imageNamed: "back")
        back.setScale(0.7)
        back.zPosition = -3
        print(back.size)
        back.position = CGPoint(x: self.size.width / 2.2 , y: self.size.height / 2)
        self.addChild(back)
                
        //sound
        let sound = SKAudioNode(fileNamed: "school")
        let playSound = SKAction.play()
        self.addChild(sound)
        sound.run(playSound)
    
        let movePointFlower = CGPoint(x: self.size.width  - tree.size.width / 2, y: self.size.height / 2)
        let zoomLabelFlower = SKAction.scale(by: 2, duration: 2 )
        let moveActionFlower = SKAction.move(to: movePointFlower, duration: 2)
        let groupActionFlower = SKAction.group([zoomLabelFlower,moveActionFlower])
        
        let movePointTree = CGPoint(x: tree.size.width / 3, y: self.size.height / 2)
        let zoomLabelTree = SKAction.scale(by: 2.5, duration: 2 )
        let moveActionTree = SKAction.move(to: movePointTree, duration: 2)
        let groupActionTree = SKAction.group([zoomLabelTree,moveActionTree])
        
        let movePointChild = CGPoint(x: self.size.width / 2, y: self.size.height / 2 - 100)
        let zoomLabelChild = SKAction.scale(to: CGSize(width: 100, height: 100), duration: 4)
        let moveActionChild = SKAction.move(to: movePointChild, duration: 4)
        let groupActionChild = SKAction.group([zoomLabelChild,moveActionChild])
        
        let movePointScool = CGPoint(x: self.size.width / 2, y: self.size.height - 150)
        let zoomLabelSchool = SKAction.scale(by: 1.5, duration: 1 )
        let moveActionSchool = SKAction.move(to: movePointScool, duration: 1)
        let groupActionSchool = SKAction.group([zoomLabelSchool,moveActionSchool])
        
        let movePointTree1 = CGPoint(x: self.size.width - tree1.size.width / 2 , y: self.size.height / 2.5)
        let zoomLabelTree1 = SKAction.scale(by: 2, duration: 2 )
        let moveActionTree1 = SKAction.move(to: movePointTree1, duration: 2)
        let groupActionTree1 = SKAction.group([zoomLabelTree1,moveActionTree1])
        
        
        
        school.run(groupActionSchool)
        tree.run(groupActionTree)
        tree1.run(groupActionTree1)
        child.run(groupActionChild)
        flower.run(groupActionFlower)
        
    }
    
    
}
