//
//  GameScene.swift
//  ballJumper
//
//  Created by Jude Willis on 29/07/2020.
//  Copyright © 2020 Jude Willis. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene : SKScene{
    
    var player : SKSpriteNode!
    var player2 : SKSpriteNode!
    var player3 : SKSpriteNode!
    var player4 : SKSpriteNode!
    var player5 : SKSpriteNode!

    override func didMove(to view: SKView){
        
        player = self.childNode(withName: "Player") as? SKSpriteNode
        player.physicsBody = SKPhysicsBody(circleOfRadius: player.size.width/2)
        player2 = self.childNode(withName: "Player2") as? SKSpriteNode
        player2.physicsBody = SKPhysicsBody(circleOfRadius: player2.size.width/2)
        player3 = self.childNode(withName: "Player3") as? SKSpriteNode
        player3.physicsBody = SKPhysicsBody(circleOfRadius: player3.size.width/2)
        player4 = self.childNode(withName: "Player4") as? SKSpriteNode
        player4.physicsBody = SKPhysicsBody(circleOfRadius: player4.size.width/2)
        player5 = self.childNode(withName: "Player5") as? SKSpriteNode
        player5.physicsBody = SKPhysicsBody(circleOfRadius: player5.size.width/2)
       // player.physicsBody?.affectedByGravity = true
      //  player.physicsBody?.applyImpulse(CGVector(dx: 30, dy: 30))
       
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0.4
        border.restitution = 0.6
        self.physicsBody = border
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var randoArray : [Int] = []
        for _ in 0..<5{
            let randomNumber = Int.random(in: -20..<20)
            randoArray.append(randomNumber)
        }
        
        player.physicsBody?.applyImpulse(CGVector(dx: randoArray[0], dy: 100))
        player2.physicsBody?.applyImpulse(CGVector(dx: randoArray[1], dy: 100))
        player3.physicsBody?.applyImpulse(CGVector(dx: randoArray[2], dy: 100))
        player4.physicsBody?.applyImpulse(CGVector(dx: randoArray[3], dy: 100))
        player5.physicsBody?.applyImpulse(CGVector(dx: randoArray[4], dy: 100))
    }

    override func update(_ currentTime : TimeInterval){
        
    }
}
