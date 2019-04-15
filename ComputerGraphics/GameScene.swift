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
    var animals                          = [SKSpriteNode]()
    var animalsOnScreen                  = [SKSpriteNode]()
    var animalToSelectLabel:SKLabelNode  = SKLabelNode()
    var animalToSelectName:String        = ""
    var score:Int                        = 0
    var currentLevel: Int                = 1
    var scoreLabel: SKLabelNode          = SKLabelNode()

    var popIn:SKAction                   = SKAction()
    var popDown:SKAction                 = SKAction()
    var shakeAction:SKAction             = SKAction()
    
    fileprivate func setupAnimals() {
        // code to create a animal sprite
        let hippo: SKSpriteNode = SKSpriteNode(imageNamed: "hippo")
        hippo.name = "hippo"
        animals.append(hippo)
        
        let panda: SKSpriteNode = SKSpriteNode(imageNamed: "panda")
        panda.name = "panda"
        animals.append(panda)
        
        let horse: SKSpriteNode = SKSpriteNode(imageNamed: "horse")
        horse.name = "horse"
        animals.append(horse)
        
        let chicken: SKSpriteNode = SKSpriteNode(imageNamed: "chicken")
        chicken.name = "chicken"
        animals.append(chicken)
        
        let elephant: SKSpriteNode = SKSpriteNode(imageNamed: "elephant")
        elephant.name = "elephant"
        animals.append(elephant)
        
        let pig: SKSpriteNode = SKSpriteNode(imageNamed: "pig")
        pig.name = "pig"
        animals.append(pig)
        
        let dog: SKSpriteNode = SKSpriteNode(imageNamed: "dog")
        dog.name = "dog"
        animals.append(dog)
        
        let goat: SKSpriteNode = SKSpriteNode(imageNamed: "goat")
        goat.name = "goat"
        animals.append(goat)
        
        let cow: SKSpriteNode = SKSpriteNode(imageNamed: "cow")
        cow.name = "cow"
        animals.append(cow)
        
        let zebra: SKSpriteNode = SKSpriteNode(imageNamed: "zebra")
        zebra.name = "zebra"
        animals.append(zebra)
        
        let whale: SKSpriteNode = SKSpriteNode(imageNamed: "whale")
        whale.name = "whale"
        animals.append(whale)
        
        let rabbit: SKSpriteNode = SKSpriteNode(imageNamed: "rabbit")
        rabbit.name = "rabbit"
        animals.append(rabbit)
        
        let monkey: SKSpriteNode = SKSpriteNode(imageNamed: "monkey")
        monkey.name = "monkey"
        animals.append(monkey)
        
        let owl: SKSpriteNode = SKSpriteNode(imageNamed: "owl")
        owl.name = "owl"
        animals.append(owl)
        
        let frog: SKSpriteNode = SKSpriteNode(imageNamed: "frog")
        frog.name = "frog"
        animals.append(frog)
        
        let duck: SKSpriteNode = SKSpriteNode(imageNamed: "duck")
        duck.name = "duck"
        animals.append(duck)
        
        let bear: SKSpriteNode = SKSpriteNode(imageNamed: "bear")
        bear.name = "bear"
        animals.append(bear)
        
        let parrot: SKSpriteNode = SKSpriteNode(imageNamed: "parrot")
        parrot.name = "parrot"
        animals.append(parrot)
        
        let penguin: SKSpriteNode = SKSpriteNode(imageNamed: "penguin")
        penguin.name = "penguin"
        animals.append(penguin)
        
        let giraffe: SKSpriteNode = SKSpriteNode(imageNamed: "giraffe")
        giraffe.name = "giraffe"
        animals.append(giraffe)
        
        let rhino: SKSpriteNode = SKSpriteNode(imageNamed: "rhino")
        rhino.name = "rhino"
        animals.append(rhino)
        
        let snake: SKSpriteNode = SKSpriteNode(imageNamed: "snake")
        snake.name = "snake"
        animals.append(snake)
    }
    
    fileprivate func setupLabels() {
        
        animalToSelectLabel.fontName = "AvenirNext-Heavy"
        animalToSelectLabel.fontColor = .black
        animalToSelectLabel.fontSize = 65
        animalToSelectLabel.position = CGPoint(x: 0, y: 450)
        addChild(animalToSelectLabel)
        
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
        
        setupActions()
        setupAnimals()
        setupLabels()
        addAnimalsToScreen()
    }
    
    func setupActions(){
        
        popIn   = SKAction.scale(to: 1.5, duration: 0.23)
        popDown = SKAction.scale(to: 1.0, duration: 0.25)
        
        let moveLeft     = SKAction.moveBy(x: -15, y: 0, duration: 0.05)
        let moveRight    = SKAction.moveBy(x: 15, y: 0, duration: 0.05)
        
        shakeAction      = SKAction.repeat(SKAction.sequence([moveLeft,moveRight]), count: 5)
    }
    func removeAnimalsFromScreen(){
        self.removeChildren(in: animalsOnScreen)
    }

    func addAnimalsToScreen(){
        
        animalsOnScreen.removeAll()
        let animal0 = randomItem()
        animal0.position = CGPoint(x: 100, y: 0)
        animalsOnScreen.append(animal0)
        animal0.setScale(0.25)
        addChild(animal0)
        animal0.run(SKAction.sequence([popIn,popDown]))
        
        let animal1 = randomItem()
        animal1.position = CGPoint(x: -100, y: 0)
        animal1.setScale(0.25)
        animalsOnScreen.append(animal1)
        addChild(animal1)
        animal1.run(SKAction.sequence([popIn,popDown]))
        
        let animal2 = randomItem()
        animal2.position = CGPoint(x: -100, y: -200)
        animal2.setScale(0.25)
        animalsOnScreen.append(animal2)
        addChild(animal2)
        animal2.run(SKAction.sequence([popIn,popDown]))
        
        let animal3 = randomItem()
        animal3.position = CGPoint(x: 100, y: -200)
        animal3.setScale(0.25)
        animalsOnScreen.append(animal3)
        addChild(animal3)
        animal3.run(SKAction.sequence([popIn,popDown]))
        
        
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
            score += 10
            scoreLabel.text = "Score: \(score)"
            let wait = SKAction.wait(forDuration: 0.5)
            let displayCorrectLabel = SKAction.run {
                self.animalToSelectLabel.run(SKAction.sequence([self.popIn, self.popDown]))
                self.animalToSelectLabel.text = "Correct!"
            }
            let removeAnimalsAction = SKAction.run{ self.removeAnimalsFromScreen()}
            let addAnimalsAction    = SKAction.run{
                                                if self.currentLevel < 10 {
                                                        self.addAnimalsToScreen()
                                                        self.currentLevel += 1
                                                }
                                                }
            
            run(SKAction.sequence([wait, displayCorrectLabel, wait, removeAnimalsAction,addAnimalsAction]))
           
            
            
        }else {
            print(false)
            let displayTryAgainLabel = SKAction.run {
                 self.animalToSelectLabel.run(self.shakeAction)
                 self.animalToSelectLabel.text = "Try Again"
            }
           
            let wait = SKAction.wait(forDuration: 0.5)
            let updateAnimalToSelectLabel = SKAction.run {
                self.animalToSelectLabel.text = "Find the \(self.animalToSelectName)"
            }
            run(SKAction.sequence([wait,displayTryAgainLabel,wait,updateAnimalToSelectLabel]))
        }
        
    }
    
}
