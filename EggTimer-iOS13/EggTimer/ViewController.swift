//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTime = ["Soft":5, "Medium":8, "Hard":12]
    var totalTime = 0
    var secondsPassed = 1
    var countdownTimer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardenessSelected(_ sender: UIButton) {
        countdownTimer.invalidate()
        secondsPassed = 1
        let hardeness = sender.currentTitle!
        totalTime = eggTime[hardeness]!
        
        countdownTimer =  Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed <= totalTime {
            let percentageProgressed = Float(secondsPassed) / Float(totalTime)
            
            progressBar.progress = Float(percentageProgressed)
            secondsPassed += 1
        }else{
            titleLabel.text = "DONE!!"
        }
    }
    
    

}
