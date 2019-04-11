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
        let animalToSelectLabel:SKLabelNode = SKLabelNode()
        animalToSelectLabel.text = "Find the: "
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
        
        let animal1 = randomItem()
        animal1.position = CGPoint(x: 100, y: 0)
        addChild(animal1)
        
        let animal2 = randomItem()
        animal2.position = CGPoint(x: -100, y: 0)
        addChild(animal2)
        
        let animal3 = randomItem()
        animal3.position = CGPoint(x: -100, y: -200)
        addChild(animal3)
        
        let animal4 = randomItem()
        animal4.position = CGPoint(x: 100, y: -200)
        addChild(animal4)
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
            if name == "goat"
            {
                print("goat")
            }else if name == "pig"{
                print("pig")
            }else if name == "elephant" {
                print("elephant")
            }else if name == "panda" {
                print("panda")
            }else if name == "dog" {
                print("dog")
            }else if name == "panda"{
                print("panda")
            }else if (name == "chicken"){
                print("chicken")
            }else if (name == "horse"){
                    print("horse")
            }else if (name == "hippo"){
                print("hippo")
            }else if (name == "cow"){
                print("cow")
            }else if (name == "zebra"){
                print("zebra")
            }else if (name == "whale"){
                print("whale")
            }else if (name == "rabbit"){
                print("rabbit")
            }else if (name == "monkey"){
                print("monkey")
            }else if (name == "owl"){
                print("owl")
            }else if (name == "frog"){
                print("frog")
            }else if (name == "duck"){
                print("duck")
            }else if (name == "bear"){
                print("bear")
            }else if (name == "parrot"){
                print("parrot")
            }else if (name == "penguin"){
                print("penguin")
            }else if (name == "giraffe"){
                print("giraffe")
            }else if (name == "rhino"){
                print("rhino")
            }else if (name == "snake"){
                print("snake")
            }
            
        }
    }
    
    
}
