//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by ian schoenrock on 11/6/18.
//  Copyright © 2018 ian schoenrock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBallImage: UIImageView!
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateAnswer()
    }

    @IBAction func DisplayBallAnswer(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateAnswer()
    }
    
    func generateAnswer()
    {
        let randomAnswerIndex = Int.random(in: 0 ... 4)
        
        magicBallImage.image = UIImage(named: answerArray[randomAnswerIndex])
    }
    
}

