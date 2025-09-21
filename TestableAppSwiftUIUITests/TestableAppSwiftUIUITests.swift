//
//  TestableAppSwiftUIUITests.swift
//  TestableAppSwiftUI
//
//  Created by Dmytro Mazalov on 21.09.2025.
//

import XCTest

final class TestableAppSwiftUIUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testFormViewSaveUser() throws {
        app.tabBars.buttons["Form"].tap()
        
        let nameField = app.textFields["nameField"]
        nameField.tap()
        nameField.typeText("John")
        
        let stepper = app.steppers["ageStepper"]
        stepper.buttons["Increment"].tap()
        
        let toggle = app.switches["subscribeToggle"]
        toggle.tap()
        
        app.buttons["saveButton"].tap()
        
        XCTAssertTrue(app.staticTexts["resultText"].exists)
    }

    func testListViewAddNote() throws {
        app.tabBars.buttons["List"].tap()
        
        let noteField = app.textFields["noteField"]
        noteField.tap()
        noteField.typeText("First Note")
        
        app.buttons["addNoteButton"].tap()
        
        XCTAssertTrue(app.staticTexts["noteRow_First Note"].exists)
    }
}
