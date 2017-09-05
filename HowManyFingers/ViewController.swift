//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Marco Grier on 9/4/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userAnswer: Int?
    
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = "Enter your guess."
        
    }
    
    @IBAction func guessTapped(_ sender: Any) {
        
        if let userAnswer = Int(guessTextField.text!) {
            
            let randomNumber = arc4random_uniform(11)
            
            if userAnswer == randomNumber {
                
                answerLabel.text = "\(randomNumber) is correct!"
                self.view.backgroundColor = UIColor.green
                
            } else {
                
                answerLabel.text = "Try again it was \(randomNumber)."
                self.view.backgroundColor = UIColor.white
                
            }
            
        }
        
    }
    
}

