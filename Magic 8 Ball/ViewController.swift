//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by James Carter on 7/23/18.
//  Copyright © 2018 James Carter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Magic8BallImageView: UIImageView!
    
    let AnswerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        Magic8BallImageView.image = UIImage(named: AnswerArray[randomBallNumber])
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        newBallImage()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AskButton(_ sender: UIButton) {
        
        newBallImage()
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

