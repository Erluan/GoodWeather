//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 19/02/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            
            let weatherURL = URL(string: "https://api.weatherapi.com/v1/current.json?key=eda91120a2984ce08f5221008221902&q=\(city)&aqi=no")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                
                return data
                
            }
            
            WebService().load(resource: weatherResource) { result in
                
            }
            
        }
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
