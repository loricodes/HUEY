//
// HUEYUITests.swift
//  HUEYUITests


//import XCTest
//
//class HUEYUITests: XCTestCase {
//
//    let app = XCUIApplication()
//    @State private var userName = ""
//
//    override func setUpWithError() throws {
//        continueAfterFailure = false
//        app.launch()
//
//    }
//
//    //Test if app is on dashboard if the greeetings user text is shown
//    func testGreetingsText() throws {
//        let greetings = app.staticTexts["greetings"]
//        let greetingsName = app.staticTexts["greetings-name"]
//
//        XCTAssert(greetings.exists)
//        XCTAssert(greetingsName.exists)
//
//        XCTAssertEqual(greetings.label, "Greetings")
//        XCTAssertEqual(greetingsName.label, "Taylor!")
//    }
//
//    //Test if menu opens and profile information is there
//    func testMenuAppearance() throws {
//        app.buttons["menu-icon"].tap()
//
//        let profileName = app.staticTexts["profile-name"]
//        let profileLocation = app.staticTexts["profile-location"]
//
//        XCTAssert(profileName.waitForExistence(timeout: 0.5))
//        XCTAssert(profileLocation.waitForExistence(timeout: 0.5))
//    }
//}
