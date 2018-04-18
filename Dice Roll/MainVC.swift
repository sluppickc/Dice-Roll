//
//  ViewController.swift
//  Dice Roll
//
//  Created by Chris Sluppick on 4/18/18.
//  Copyright © 2018 Chris Sluppick. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var leftDiceImage: UIImageView!
    @IBOutlet weak var rightDiceImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollDiceBtnPressed(_sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        rightDiceImage.image = UIImage(named: diceArray[randomDiceIndex1])
        leftDiceImage.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
   override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }


}

