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
        
    
        //let cloudSize = Cloud.sizeSprite().width
        let cloudPosition = CGPoint(x: 0 , y: self.size.height / 1.8)
        let cloudPositionTo = CGPoint(x: self.size.width, y: self.size.height / 1.5)
        let cloudPositionReturn = CGPoint(x: 0, y: self.size.height / 1.5)
        let cloud = Cloud.showCloud(at: cloudPosition, pointTo: cloudPositionTo, returnPoint: cloudPositionReturn)
        self.addChild(cloud)
        
        let position = CGPoint(x: self.size.width, y: self.size.height / 1.5)
        let positionTo = CGPoint(x: self.size.width / 1.3, y: self.size.height / 2.4)
        let school = School.showSchool(at: position, to: positionTo)
        self.addChild(school)
        
        let positionBack = CGPoint(x: self.size.width / 2 , y: self.size.height/2.7)
        let background = Background.showBackground(at: positionBack)
        self.addChild(background)
        
        let positionChild = CGPoint(x: self.size.width / 1.5, y: self.size.height / 3.5)
        let child = Child.showChild(at: CGPoint(x: 0, y: 0), pointTo: positionChild)
        self.addChild(child)
        
        
        let treeOneposition = CGPoint(x: 0 , y: self.size.height / 4)
        let treeOnePositionTo = CGPoint(x: self.size.width / 2.5, y: self.size.height / 3)
        let treeOne = Tree.showTree(at: treeOneposition, pointTo: treeOnePositionTo, imageName: "tree", zPosition: -1, scale: 0.05, scaleTo: 1.5)
        self.addChild(treeOne)
        
        
        let treeTwoPosition = CGPoint(x: self.size.width , y: self.size.height / 5)
        let treeTwoPositionTo = CGPoint(x: self.size.width / 1.1, y: self.size.height / 4.5)
        let treeTwo = Tree.showTree(at: treeTwoPosition, pointTo: treeTwoPositionTo, imageName: "tree", zPosition: 3, scale: 0.05, scaleTo: 2)
        self.addChild(treeTwo)
        
        
        let sunPosition = CGPoint(x: 0 , y: self.size.height / 3)
        let sunPositionTo = CGPoint(x: self.size.width / 2 , y: self.size.height / 1.4)
        let sun = Sun.showSun(at: sunPosition, pointTo: sunPositionTo)
        self.addChild(sun)
        
        
        let goBtnPoint = CGPoint(x: self.size.width / 2 , y: 0)
        let goBtnPointTo  = CGPoint(x: self.size.width / 2 , y: 60)
        let goBtn = GoButton.showGoBtn(at: goBtnPoint, pointTo: goBtnPointTo)
        //self.addChild(goBtn)
        
        
        
        //sound
        let sound = SKAudioNode(fileNamed: "schooltrim")
        self.addChild(sound)
        sound.run(SKAction.changeVolume(to: 0, duration: 10)) {
            self.addChild(goBtn)
            sound.run(SKAction.stop())
        }
    }
}
