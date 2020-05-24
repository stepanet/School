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
        //print(school.size)
        school.position = CGPoint(x: self.size.width + school.size.width , y: self.size.height / 1.5)
        self.addChild(school)
        
        //child
        let child = SKSpriteNode(imageNamed: "student")
        child.setScale(0.5)
        child.zPosition = 2
        //print(child.size)
        child.position = CGPoint(x: 0, y: 0)
        self.addChild(child)
        
        //tree
        let tree = SKSpriteNode(imageNamed: "tree")
        tree.setScale(0.05)
        tree.zPosition = -1
        //print(tree.size)
        tree.position = CGPoint(x: 0 , y: self.size.height / 4)
        self.addChild(tree)
        
        //tree1
        let tree1 = SKSpriteNode(imageNamed: "tree")
        tree1.setScale(0.05)
        tree1.zPosition = 3
        //print(tree1.size)
        tree1.position = CGPoint(x: self.size.width , y: self.size.height / 5)
        self.addChild(tree1)
        
        //flower
        let flower = SKSpriteNode(imageNamed: "flower")
        flower.setScale(0.5)
        flower.zPosition = -0
        //print(flower.size)
        flower.position = CGPoint(x: self.size.width + flower.size.width , y: self.size.height / 2.5)
        self.addChild(flower)
        
        //back
        let back = SKSpriteNode(imageNamed: "back")
        back.setScale(0.75)
        back.zPosition = -3
        //print(back.size)
        back.position = CGPoint(x: self.size.width / 2 , y: self.size.height/2.7)
        self.addChild(back)
        
        
        //goBtn
        let goBtn = SKSpriteNode(imageNamed: "btn")
        goBtn.setScale(0.1)
        goBtn.zPosition = 2
        //print(back.size)
        goBtn.position = CGPoint(x: self.size.width / 2 , y: 60)
        
        
        
        //cloud
        let cloud = SKSpriteNode(imageNamed: "cloud")
        cloud.setScale(0.5)
        cloud.zPosition = 2
        cloud.position = CGPoint(x: 0 - cloud.size.width / 2 , y: self.size.height / 1.8)
        self.addChild(cloud)
        
        
        let sun = SKSpriteNode(imageNamed: "sun")
        sun.setScale(0.02)
        sun.zPosition = -3
        sun.position = CGPoint(x: 0 , y: self.size.height / 3)
        self.addChild(sun)
        
        
        let movePointSun = CGPoint(x: self.size.width / 2 , y: self.size.height / 1.4)
        let moveActionSun = SKAction.move(to: movePointSun, duration: 5)
        let zoomSun = SKAction.scale(to: CGSize(width: sun.size.width * 2, height: sun.size.height * 2 ), duration: 5)
        let groupActionSun = SKAction.group([moveActionSun,zoomSun])
        
        
        
        let movePointCloud = CGPoint(x: self.size.width + cloud.size.width, y: self.size.height / 1.5)
        let movePointCloudReturn = CGPoint(x: 0 - cloud.size.width, y: self.size.height / 1.5)
        let moveActionCloud = SKAction.move(to: movePointCloud, duration: 3)
        let moveActionCloudReturn = SKAction.move(to: movePointCloudReturn, duration: 5)
        let moveCloud = SKAction.sequence([moveActionCloud,moveActionCloudReturn])
        let zoomCloud = SKAction.scale(to: CGSize(width: cloud.size.width / 2, height: cloud.size.height / 2 ), duration: 5)
        let groupActionCloud = SKAction.group([moveCloud,zoomCloud])
        
        
        
        //let movePointBtn = CGPoint(x: self.size.width  - tree.size.width / 2, y: self.size.height / 2)
        let zoomLabelBtn = SKAction.scale(by: 10, duration: 3 )
        //let moveActionBtn = SKAction.move(to: movePointFlower, duration: 2)
        let groupActionBtn = SKAction.group([zoomLabelBtn])
        
        //sound
        let sound = SKAudioNode(fileNamed: "school")
        self.addChild(sound)

        
        let movePointTree = CGPoint(x: self.size.width / 2.5, y: self.size.height / 3)
        let zoomLabelTree = SKAction.scale(by: 1.5, duration: 1 )
        let moveActionTree = SKAction.move(to: movePointTree, duration: 1)
        let groupActionTree = SKAction.group([zoomLabelTree,moveActionTree])
        
        let movePointChild = CGPoint(x: self.size.width / 1.5, y: self.size.height / 3.5)
        let zoomLabelChild = SKAction.scale(to: CGSize(width: 100, height: 100), duration: 4)
        let moveActionChild = SKAction.move(to: movePointChild, duration: 4)
        let groupActionChild = SKAction.group([zoomLabelChild,moveActionChild])
        
        let movePointScool = CGPoint(x: self.size.width / 1.3, y: self.size.height / 2.4)
        let zoomLabelSchool = SKAction.scale(by: 1, duration: 1 )
        let moveActionSchool = SKAction.move(to: movePointScool, duration: 1)
        let groupActionSchool = SKAction.group([zoomLabelSchool,moveActionSchool])
        
        let movePointTree1 = CGPoint(x: self.size.width / 1.1, y: self.size.height / 4.5)
        let zoomLabelTree1 = SKAction.scale(by: 2, duration: 1 )
        let moveActionTree1 = SKAction.move(to: movePointTree1, duration: 1)
        let groupActionTree1 = SKAction.group([zoomLabelTree1,moveActionTree1])
        
        
        sun.run(groupActionSun)
        school.run(groupActionSchool)
        tree.run(groupActionTree)
        tree1.run(groupActionTree1)
        cloud.run(groupActionCloud)
        child.run(groupActionChild) {
            self.addChild(goBtn)
            goBtn.run(groupActionBtn) {
                //sound.run(SKAction.stop())
            }
        }
    }
}
