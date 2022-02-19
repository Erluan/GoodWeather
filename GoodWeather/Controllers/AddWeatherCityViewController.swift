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
        
        print("Saved!")
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
