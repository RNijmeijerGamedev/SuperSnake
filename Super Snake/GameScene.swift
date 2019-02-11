//
//  GameScene.swift
//  Super Snake
//
//  Created by Ruben Nijmeijer on 11/02/2019.
//  Copyright © 2019 Ruben Nijmeijer. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameLogo: SKLabelNode!
    var bestScore: SKLabelNode!
    var playButton: SKShapeNode!
    
    
    override func didMove(to view: SKView) {
        initializeMenu()
    }
    
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    private func initializeMenu(){
        // create title
        gameLogo = SKLabelNode(fontNamed: "ArialMT")
        gameLogo.zPosition = 1
        gameLogo.position = CGPoint(x: 0, y:(frame.size.height / 2) - 200)
        gameLogo.fontSize = 60
        gameLogo.fontColor = SKColor.red
        self.addChild(gameLogo)
        // create best score label
        bestScore = SKLabelNode(fontNamed: "ArialMT")
        bestScore.zPosition = 1
        bestScore.position = CGPoint(x: 0, y: gameLogo.position.y - 50)
        bestScore.fontSize = 40
        bestScore.text = "Best Score: 0"
        bestScore.fontColor = SKColor.white
        self.addChild(bestScore)
        // create play button
        playButton = SKShapeNode()
        playButton.name = "play_button"
        playButton.zPosition = 1
        playButton.position = CGPoint(x: 0, y: (frame.size.height / -2) + 200)
        playButton.fillColor = SKColor.cyan
        let topCorner = CGPoint(x: -50, y: 50)
        let bottomCorner = CGPoint(x: -50, y: -50)
        let middle = CGPoint(x: 50, y: 0)
        let path = CGMutablePath()
        path.addLine(to: topCorner)
        path.addLines(between: [topCorner,bottomCorner,middle])
        playButton.path = path
        self.addChild(playButton)
        
    }
}
