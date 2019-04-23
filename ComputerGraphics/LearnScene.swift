//
//  LearnScene.swift
//  ComputerGraphics
//
//  Created by Rodolfo Galarza on 4/18/19.
//  Copyright © 2019 Rodolfo Galarza. All rights reserved.
//

import Foundation
import SpriteKit

class LearnScene: SKScene {
    
    var animals                          = [SKSpriteNode]()
    var currentAnimalIndex:Int           = 0
    var animalOnScene:SKSpriteNode       = SKSpriteNode()
    let animalOnSceneLabel:SKLabelNode   = SKLabelNode()
    var mainMenuButton:SKSpriteNode      = SKSpriteNode()
    let popIn                            = SKAction.scale(to: 2.5, duration: 0.23)
    let popDown                          = SKAction.scale(to: 2.0, duration: 0.25)
    var animalIsOnScreen:Bool            = false
     let swipeRightRec = UISwipeGestureRecognizer()
    
    override func didMove(to view: SKView) {
        
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        setupAnimals()
        //setupMainMenuButton()
        self.backgroundColor = .orange
        swipeRightRec.addTarget(self, action: #selector(LearnScene.swipedRight) )
        swipeRightRec.direction = .right
        self.view!.addGestureRecognizer(swipeRightRec)
        
    }
    
    @objc func swipedRight(){
        mainMenu()
    }
    
    func addAnimalToScene(atIndex: Int){
        
        
        
        animalOnScene = animals[atIndex]
        animalOnScene.position = CGPoint(x: 0, y: 0)
        animalOnScene.setScale(0.25)
        

        addChild(animalOnScene)

        
        animalOnScene.run(SKAction.sequence([popIn, popDown]))
        animalOnSceneLabel.text      = animalOnScene.name
        animalOnSceneLabel.position  = CGPoint(x: 0, y: animalOnScene.position.y - 300)
        animalOnSceneLabel.fontName  = "AvenirNext-Heavy"
        animalOnSceneLabel.fontSize  = 100
        animalOnSceneLabel.fontColor = .white
        addChild(animalOnSceneLabel)
        animalIsOnScreen = true
        
    }
    
    func setupMainMenuButton(){
        
        mainMenuButton              = SKSpriteNode(imageNamed: "home")
        mainMenuButton.position     = CGPoint(x: 0, y: -500)
        mainMenuButton.name         = "mainMenuButton"
        mainMenuButton.xScale       = 3.0
        mainMenuButton.yScale       = 3.0
        mainMenuButton.zPosition    = 5
        self.addChild(mainMenuButton)
    }
    
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
    
    func mainMenu(){
        let mainMenuScene = MainMenuScreen(size: CGSize(width: 750, height: 1624))
        mainMenuScene.scaleMode = .aspectFill
        view?.presentScene(mainMenuScene, transition: SKTransition.doorsCloseHorizontal(withDuration: 0.5))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
       
        self.scene?.removeAllChildren()
        
        //let touch:UITouch   = touches.first!
        // let positionInScene = touch.location(in: self)
        //let touchedNode     = self.atPoint(positionInScene)
        
        
        
        if currentAnimalIndex >= animals.count {
            currentAnimalIndex = 0
        }
        
        addAnimalToScene(atIndex:currentAnimalIndex)
        

        //setupMainMenuButton()
        currentAnimalIndex += 1
        

    }
}
