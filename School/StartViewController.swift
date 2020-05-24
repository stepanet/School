//
//  StartViewController.swift
//  School
//
//  Created by Jack Sp@rroW on 23.05.2020.
//  Copyright © 2020 Jack Sp@rroW. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class StartViewController: UIViewController {

    @IBOutlet weak var sceneView: SKView!
    @IBOutlet weak var goBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startMainScene()

    }
    
    
    func startMainScene() {
        
        sceneView.layer.cornerRadius = 10
        sceneView.clipsToBounds = true
        sceneView.backgroundColor = .white
        
        sceneView.scene?.removeAllChildren()
        
        if let view = sceneView  {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "StartScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                scene.size = self.sceneView.bounds.size
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
          //  view.showsFPS = true
          //  view.showsNodeCount = true
        }

        
    }
    
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func goBtnAction(_ sender: UIButton) {
        startMainScene()
    }
    
}
