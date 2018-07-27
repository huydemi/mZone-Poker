//
//  mZone_PokerUITests.swift
//  mZone PokerUITests
//
//  Created by Dang Quoc Huy on 7/27/18.
//

import XCTest

class mZone_PokerUITests: XCTestCase {
  
  func testExample() {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    let app = XCUIApplication()
    setupSnapshot(app)
    app.launch()
    
    let chipCountTextField = app.textFields["chip count"]
    chipCountTextField.tap()
    chipCountTextField.typeText("10")
    
    let bigBlindTextField = app.textFields["big blind"]
    bigBlindTextField.tap()
    bigBlindTextField.typeText("100")
    
    snapshot("01UserEntries")
    
    app.buttons["what should i do"].tap()
    snapshot("02Suggestion")
  }
  
}
