//
//  ViewController.swift
//  Color_Guessing_Game
//
//  Created by Eric Davenport on 10/29/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randRed: CGFloat = 0.0
    var randGreen: CGFloat = 0.0
    var randBlue: CGFloat = 0.0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseRandomColor()
        greenButton.backgroundColor = .green
        blueButton.backgroundColor = .blue
        redButton.backgroundColor = .red
    }
    @IBOutlet weak var randomColor: UIView!
    
    @IBOutlet weak var scoreCounter: UILabel!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var rightWrongLabel: UILabel!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    
    
    func chooseRandomColor() {
        randRed = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        randomColor.backgroundColor = myColor
    }
    
    func answerSelect(sender: UIButton) {
           
           switch sender.tag {
           case 0:
               if randBlue > randGreen && randBlue > randRed {
                rightWrongLabel.text = "CORRECT"
                score += 1
                scoreCounter.text = "Score: \(score)"
               } else {
                   rightWrongLabel.textColor = .blue
                   rightWrongLabel.text = "INCORRECT"
               }
            
               
           case 1:
               if randRed > randGreen && randRed > randBlue {
                rightWrongLabel.text = "CORRECT"
                score += 1
                scoreCounter.text = "Score: \(score)"
                          } else {
                   rightWrongLabel.text = "INCORRECT"
                   rightWrongLabel.textColor = .red
                                     }
               
            
           case 2:
               if randGreen > randBlue && randGreen > randRed {
                rightWrongLabel.text = "CORRECT"
                score += 1
                scoreCounter.text = "Score: \(score)"
                          } else {
                   rightWrongLabel.textColor = .green
                   rightWrongLabel.text = "INCORRECT"
                                     }
            
           default:
               print("")
               
           }
       }
    
    
    @IBAction func colorSelect(_ sender: UIButton) {
    
        answerSelect(sender: sender)
       
        
        chooseRandomColor()
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

