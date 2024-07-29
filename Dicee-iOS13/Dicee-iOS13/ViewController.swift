//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    var num = Int.random(in: 0...5);
    
    
    @IBAction func rollBtn(_ sender: UIButton) {
        let diceList = ["One","Two","Three","Four", "Five", "Six"];
        
        dice1.image = UIImage(named: "Dice"+diceList.randomElement()!);
        dice2.image = UIImage(named: "Dice" + diceList.randomElement()!);
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    
        dice1.image = UIImage(named: "DiceFour");
    
        // Do any additional setup after loading the view.
    }


}

