//
//  ViewController.swift
//  AppFour
//
//  Created by Mykola on 2018-06-20.
//  Copyright © 2018 Mykola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func dealTapped(_ sender: Any) {
        
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        feedbackGenerator.impactOccurred()
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        print("leftRandomNumber is: \(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        print("rightRandomNumber is: \(rightRandomNumber)")
        //change image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber == rightRandomNumber {
            print("my dick is definatly bigger")
        }
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        if leftRandomNumber < rightRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
    @IBAction func resetScore(_ sender: Any) {
        
        //resets score label
        leftScore = 0
        leftScoreLabel.text = String(leftScore)
        rightScore = 0
        rightScoreLabel.text = String(rightScore)
       
        //allows user to recognize reset
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        feedbackGenerator.impactOccurred()
       
        //resets the Cards image
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
    }
}

