//
//  HUEYTests.swift
//  HUEYTests


import XCTest
@testable import HUEY

class HUEYTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let greetings = app.staticTexts["greeetings"]
        
        XCTAssert(greetings.exists)
    }

}
