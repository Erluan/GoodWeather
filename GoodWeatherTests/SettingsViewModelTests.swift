//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Erluan Felix Batista on 08/03/22.
//

import XCTest
@testable import GoodWeather

class SettingsViewModelTests: XCTestCase {
    
    private var settingsVM: SettingsViewModel!
    
    override func setUp() {
        super.setUp()
        self.settingsVM = SettingsViewModel()
    }
    
    func test_should_return_unit_display_name() {
        XCTAssertEqual(self.settingsVM.selectedUnit.displayName, "Farenheit")
    }

    func test_ensure_that_default_selected_unit_value_is_farenheit() {
        
        XCTAssertEqual(self.settingsVM.selectedUnit, .farenheit)
        
    }
    
    func test_should_save_user_unit_selection(){
        self.settingsVM.selectedUnit = .farenheit
        let userDefaults = UserDefaults.standard
        XCTAssertNil(userDefaults.value(forKey: "unit"))
    }
    
    override func tearDown() {
        super.tearDown()
        
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "unit")
    }

}
