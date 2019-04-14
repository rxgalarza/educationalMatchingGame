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
    
    // Array of animal sprites
    var animals = [SKSpriteNode]()
    var animalsOnScreen = [SKSpriteNode]()
    var animalToSelectLabel:SKLabelNode = SKLabelNode()
    var animalToSelectName:String = ""
    
    fileprivate func setupAnimals() {
        // code to create a animal sprite
        let hippo: SKSpriteNode = SKSpriteNode(imageNamed: "hippo")
        hippo.position = CGPoint(x: -100, y: 0)
        hippo.name = "hippo"
        animals.append(hippo)
        
        let panda: SKSpriteNode = SKSpriteNode(imageNamed: "panda")
        panda.position = CGPoint(x: 100, y: 0)
        panda.name = "panda"
        animals.append(panda)
        
        let horse: SKSpriteNode = SKSpriteNode(imageNamed: "horse")
        horse.position = CGPoint(x: -100, y: 200)
        horse.name = "horse"
        animals.append(horse)
        
        let chicken: SKSpriteNode = SKSpriteNode(imageNamed: "chicken")
        chicken.position = CGPoint(x: -100, y: 200)
        chicken.name = "chicken"
        animals.append(chicken)
        
        
        // addChild(panda)
        let elephant: SKSpriteNode = SKSpriteNode(imageNamed: "elephant")
        elephant.position = CGPoint(x: -100, y: -200)
        elephant.name = "elephant"
        animals.append(elephant)
        
        let pig: SKSpriteNode = SKSpriteNode(imageNamed: "pig")
        pig.position    = CGPoint(x: 100, y: -200)
        pig.name = "pig"
        animals.append(pig)
        
        let dog: SKSpriteNode = SKSpriteNode(imageNamed: "dog")
        dog.position    = CGPoint(x: -100, y: 100)
        dog.name = "dog"
        animals.append(dog)
        
        let goat: SKSpriteNode = SKSpriteNode(imageNamed: "goat")
        goat.position    = CGPoint(x: 100, y: 100)
        goat.name = "goat"
        animals.append(goat)
    }
    
    fileprivate func setupLabels() {
        
       
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
    
    override func didMove(to view: SKView) {
        print("SCENE")
        self.backgroundColor = .green
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        setupAnimals()
        setupLabels()
        addAnimalsToScreen()
        
    }
    
    func addAnimalsToScreen(){
        
        let animal0 = randomItem()
        animal0.position = CGPoint(x: 100, y: 0)
        animalsOnScreen.append(animal0)
        addChild(animal0)
        
        let animal1 = randomItem()
        animal1.position = CGPoint(x: -100, y: 0)
        animalsOnScreen.append(animal1)
        addChild(animal1)
        
        let animal2 = randomItem()
        animal2.position = CGPoint(x: -100, y: -200)
        animalsOnScreen.append(animal2)
        addChild(animal2)
        
        let animal3 = randomItem()
        animal3.position = CGPoint(x: 100, y: -200)
        animalsOnScreen.append(animal3)
        addChild(animal3)
        
        let randomInt = Int.random(in: 0..<4)
        print(randomInt)
       
        animalToSelectName = animalsOnScreen[randomInt].name!
        
        animalToSelectLabel.text = "Find the \(animalToSelectName)"
        
    }
    
    var indexes = [Int]();
    
    func randomItem() -> SKSpriteNode
    {
        if indexes.count == 0
        {
            print("Filling indexes array")
            indexes = Array(0..<animals.count)
        }
        let randomIndex = Int(arc4random_uniform(UInt32(indexes.count)))
        let anIndex = indexes.remove(at:randomIndex)
        return animals[anIndex];
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch:UITouch = touches.first!
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        if let name = touchedNode.name
        {
            checkUserSelection(name: name)
        }
    }
    
    
    func checkUserSelection(name: String){
        print(name)
        if name == animalToSelectName{
            print(true)
        }else {
            print(false)
        }
        
    }
    
}
