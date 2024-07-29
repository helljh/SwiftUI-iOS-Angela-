//
//  Quest5ion.swift
//  Quizzler-iOS13
//
//  Created by 허준호 on 7/4/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let q: String
    let a: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.q = q
        self.a = a
        self.correctAnswer =  correctAnswer
    }
}
