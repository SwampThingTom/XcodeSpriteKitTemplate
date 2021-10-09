//___FILEHEADER___

import UIKit
import SpriteKit
import GameplayKit

let gameSceneSize = CGSize(width: 1024, height: 1024)

class ___FILEBASENAME___: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: gameSceneSize)
        scene.scaleMode = .aspectFit

        let skView = self.view as! SKView
        skView.presentScene(scene)
        skView.ignoresSiblingOrder = true
        
        // debug views
        skView.showsFPS = true
        skView.showsNodeCount = true
        //skView.showsPhysics = true
    }
}
