//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 19/02/22.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    // TODO: Implement Unit Setting Here
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperatureC.formatAsDegree())"
    }
    
    
}
