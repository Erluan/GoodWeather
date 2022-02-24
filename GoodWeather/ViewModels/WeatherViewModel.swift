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
    
    private func toCelsius() {
        
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            // Case the temp comes in Kelvin
            // weatherModel.temperature = (weatherModel.temperature - 32) * 5/9
            weatherModel.temperature = weatherModel.temperatureC
            return weatherModel
        }
        
    }
    
    private func toFahrenheit() {
        
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            // Case the temp comes in Kelvin
            // weatherModel.temperature = (weatherModel.temperature * 9/5) + 32
            weatherModel.temperature = weatherModel.temperatureF
            return weatherModel
        }
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
            case .celsius:
                toCelsius()
            case .farenheit:
                toFahrenheit()
        }
    }
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.current.temp_c
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

