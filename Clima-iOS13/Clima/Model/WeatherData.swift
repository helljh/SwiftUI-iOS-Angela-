//
//  WeatherData.swift
//  Clima
//
//  Created by 허준호 on 7/16/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable{
    let name: String
    let weather:[Weather]
    let main: Main
    
}

struct Main: Decodable{
    let temp: Double
}

struct Weather: Decodable{
    let id: Int
}
