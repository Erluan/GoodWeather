//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 21/02/22.
//

import Foundation
import UIKit

class WeatherListViewModel {
    
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.location.name
    }
    
    var temperatureC: Double {
        return weather.current.temp_c
    }
    
    var temperatureF: Double {
        return weather.current.temp_f
    }
    
}

