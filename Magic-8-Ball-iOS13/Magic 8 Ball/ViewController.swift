//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askBtnPressed(_ sender: UIButton) {
        imageView.image = UIImage(named: "ball\(Int.random(in: 1...5))")
    }
}
