//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 21/02/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let location: Location
    let current: Weather
}

struct Weather: Decodable {
    let temp_f: Double
    let temp_c: Double
    let humidity: Double
}

struct Location: Decodable {
    let name: String
}
