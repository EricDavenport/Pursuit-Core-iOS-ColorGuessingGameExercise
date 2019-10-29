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
    }
    
   
    
    @IBAction func colorSelect(_ sender: UIButton) {
        
        let randNum = CGFloat.random(in: 0...2)
        let myColor = UIColor(red: randNum, green: randNum, blue: randNum, alpha: randNum)
        
        randomColor.backgroundColor = myColor
    }
    
    
    @IBOutlet weak var randomColor: UIView!
    
    
    
    
    
    
    
    
    
}

