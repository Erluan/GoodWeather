//
//  Constants.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 21/02/22.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
//            let userDefaults = UserDefaults.standard
//            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.weatherapi.com/v1/current.json?key=eda91120a2984ce08f5221008221902&q=\(city.escaped())&aqi=no")!
            
        }
        
    }
    
}
