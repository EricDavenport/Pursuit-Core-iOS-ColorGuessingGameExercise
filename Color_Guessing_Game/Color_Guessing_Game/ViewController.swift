//
//  ViewController.swift
//  Color_Guessing_Game
//
//  Created by Eric Davenport on 10/29/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseRandomColor()
    }
    
   
    
    func chooseRandomColor() {
        let randRed = CGFloat.random(in: 0...1)
        let randGreen = CGFloat.random(in: 0...1)
        let randBlue = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        randomColor.backgroundColor = myColor
    }
    
    @IBAction func colorSelect(_ sender: UIButton) {
        
        chooseRandomColor()
    }
    
    
    @IBOutlet weak var randomColor: UIView!
    
    
    
    
    
    
    
    
    
}

