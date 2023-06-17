//
//  HUEYUITestsFinal.swift
//  HUEYUITestsFinal

import XCTest

class HUEYUITestsFinal: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testExample() throws {
        let greetings = app.staticTexts["greetings"]
        
        XCTAssert(greetings.exists)
    }

}
