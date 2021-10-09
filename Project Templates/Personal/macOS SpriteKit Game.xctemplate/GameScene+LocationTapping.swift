//___FILEHEADER___

import SpriteKit

extension GameScene {

    override func mouseDown(with event: NSEvent) {
        tapBegan(at: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        tapBegan(at: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        tapBegan(at: event.location(in: self))
    }
}
