//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 21/02/22.
//

import Foundation
import UIKit

class WeatherListViewModel {
    
    
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name.name
    }
    
    var temperatureC: Double {
        return weather.current.temp_c
    }
    
    var temperatureF: Double {
        return weather.current.temp_f
    }
    
}

