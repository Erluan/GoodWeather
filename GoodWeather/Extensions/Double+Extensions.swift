//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Erluan Felix Batista on 22/02/22.
//

import Foundation
import UIKit

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
    
}
