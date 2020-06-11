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

//    @IBOutlet weak var sceneView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startMainScene()

    }
    
    
    func startMainScene() { 

        if let view = self.view as! SKView?  {
            
            let scene = StartScene(size: self.view.bounds.size)
                scene.removeAllChildren()
                scene.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            
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
