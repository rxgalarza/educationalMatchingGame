//
//  GameScene.swift
//  ComputerGraphics
//
//  Created by Rodolfo Galarza on 4/4/19.
//  Copyright © 2019 Rodolfo Galarza. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        print("SCENE")
        self.backgroundColor = .green
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        // Array of animal sprites
        var animals = [SKSpriteNode]()
        
        // code to create a animal sprite
        var hippo: SKSpriteNode = SKSpriteNode(imageNamed: "hippo")
        hippo.position = CGPoint(x: -100, y: 0)
        hippo.name = "hippo"
        animals.append(hippo)
        
        
        let panda: SKSpriteNode = SKSpriteNode(imageNamed: "panda")
        panda.position = CGPoint(x: 100, y: 0)
        panda.name = "panda"

       // addChild(panda)
        
        let elephant: SKSpriteNode = SKSpriteNode(imageNamed: "elephant")
        elephant.position = CGPoint(x: -100, y: -200)
        elephant.name = "elephant"
        addChild(elephant)
        
        let pig: SKSpriteNode = SKSpriteNode(imageNamed: "pig")
        pig.position    = CGPoint(x: 100, y: -200)
        pig.name = "pig"
        addChild(pig)
        
        
        let animalToSelectLabel:SKLabelNode = SKLabelNode()
        animalToSelectLabel.text = "Find the panda"
        animalToSelectLabel.fontName = "AvenirNext-Heavy"
        animalToSelectLabel.fontColor = .black
        animalToSelectLabel.fontSize = 65
        animalToSelectLabel.position = CGPoint(x: 0, y: 450)
        addChild(animalToSelectLabel)
        
        //AvenirNext-Heavy
        
        let scoreLabel: SKLabelNode = SKLabelNode()
        scoreLabel.text = "Score:"
        scoreLabel.fontColor = .black
        scoreLabel.fontName = "AvenirNext-Heavy"
        scoreLabel.fontSize = 40
        scoreLabel.position = CGPoint(x: 250, y: 600)
        addChild(scoreLabel)
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch:UITouch = touches.first!
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let name = touchedNode.name
        {
            if name == "hippo"
            {
               print("hippo")
                
            }else if name == "pig"{
                 print("pig")
            }else if name == "elephant" {
                print("elephant")
            }else if name == "panda" {
                print("panda")
            }
        }
        
    }
    
    
}
