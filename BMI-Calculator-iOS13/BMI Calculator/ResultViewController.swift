//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 허준호 on 7/12/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: BMI?
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(format: "%.1f", bmi!.value)
        adviceLabel.text = bmi!.advice
        backgroundImage.backgroundColor = bmi!.color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
