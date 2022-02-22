//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 19/02/22.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {

    func addWeatherDidSave(vm: WeatherViewModel)
    
}

class AddWeatherCityViewController: UIViewController {
    
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegate?
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
