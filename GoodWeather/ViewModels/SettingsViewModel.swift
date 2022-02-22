//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 22/02/22.
//

import Foundation
import CoreVideo

enum Unit: String, CaseIterable {
    case celsius = "c"
    case farenheit = "f"
}

extension Unit {
    var displayName: String {
        get {
            switch(self) {
                case .celsius:
                    return "Celsius"
                case .farenheit:
                    return "Farenheit"
            }
        }
    }
}

class SettingsViewModel {
    
    let units = Unit.allCases
    
    var selectedUnit: Unit {
        get {
            let userDefault = UserDefaults.standard
            var unitValue = ""
            if let value = userDefault.value(forKey: "unit") as? String {
                unitValue = value
            }
            return Unit(rawValue: unitValue)!
        }
        set {
            let userDefault = UserDefaults.standard
            userDefault.set(newValue.rawValue, forKey: "unit")
        }
    }
    
}
