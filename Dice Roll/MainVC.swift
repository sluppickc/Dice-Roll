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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollDiceBtnPressed(_sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        rightDiceImage.image = UIImage(named: diceArray[randomDiceIndex1])
        leftDiceImage.image = UIImage(named: diceArray[randomDiceIndex2])
        
//        switch randomDiceIndex1 {
//        case 0:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice1")
//        case 1:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice2")
//        case 2:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice3")
//        case 3:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice4")
//        case 4:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice5")
//        case 5:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice6")
//
//        default:
//            leftDiceImage.image = #imageLiteral(resourceName: "dice1")
//        }
//
//        switch randomDiceIndex2 {
//        case 0:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice1")
//        case 1:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice2")
//        case 2:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice3")
//        case 3:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice4")
//        case 4:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice5")
//        case 5:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice6")
//
//        default:
//            rightDiceImage.image = #imageLiteral(resourceName: "dice1")
//        }
    }


}

