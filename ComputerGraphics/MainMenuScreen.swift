//
//  MainMenuScreen.swift
//  ComputerGraphics
//
//  Created by Rodolfo Galarza on 4/9/19.
//  Copyright © 2019 Rodolfo Galarza. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class MainMenuScreen: SKScene {
     let playButton:SKSpriteNode = SKSpriteNode(imageNamed: "buttonGreen")
     let learnButton:SKSpriteNode = SKSpriteNode(imageNamed: "buttonGreen")
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.backgroundColor = .blue

       
        playButton.position = CGPoint(x: 0, y:0)
        playButton.name = "playButton"
        playButton.yScale = 1.5
        playButton.xScale = 2.0
        playButton.zPosition = -10
        addChild(playButton)
        
        let playLabel:SKLabelNode = SKLabelNode()
        playLabel.text = "Play"
        playLabel.fontName = "AvenirNext-Heavy"
        playLabel.fontColor = .black
        playLabel.fontSize = 30
        playLabel.position = CGPoint(x: playButton.position.x, y: playButton.position.y - 20)
        addChild(playLabel)
        

        
        learnButton.position = CGPoint(x: 0, y:-100)
        learnButton.name = "learnButton"
        learnButton.yScale = 1.5
        learnButton.xScale = 2.0
        learnButton.zPosition = -10
        addChild(learnButton)

        
        let learnLabel:SKLabelNode = SKLabelNode()
        learnLabel.text = "Learn"
        learnLabel.fontName = "AvenirNext-Heavy"
        learnLabel.fontColor = .black
        learnLabel.fontSize = 30
        learnLabel.position = CGPoint(x: learnButton.position.x, y: learnButton.position.y - 20)
        addChild(learnLabel)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch:UITouch = touches.first!
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let name = touchedNode.name
        {
            if name == "playButton"
            {
                let gameScene = GameScene(size: CGSize(width: 750, height: 1624))
                view?.presentScene(gameScene)
            }else if name == "learnButton"{
                print("learn Button Touched")
            }
        }
    }
}
