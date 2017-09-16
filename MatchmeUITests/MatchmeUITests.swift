//
//  MatchmeUITests.swift
//  MatchmeUITests
//
//  Created by Wei Li on 7/24/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import XCTest

class MatchmeUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        //XCUIApplication().launch()
        app = XCUIApplication()
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLogin() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let usernameTextField = app.textFields["Username"]
        usernameTextField.tap()
        usernameTextField.typeText("liwei")
        let passwordTextField = app.secureTextFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText("123456")
        app.buttons["Sign in"].tap()
    }
    
    func testSwitchtaps() {
        
        let app = XCUIApplication()
        app.buttons["Sign in"].tap()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Match"].tap()
        tabBarsQuery.buttons["Me"].tap()
        tabBarsQuery.buttons["Message"].tap()
    }
    
    
    func testChat() {
        let app = XCUIApplication()
        let textField = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element
        textField.tap()
        textField.typeText("daw")
        app.typeText("dawd")
        app.buttons["Send"].tap()
        textField.tap()
        textField.tap()
        textField.typeText("hell")
        app.typeText("o\r")
        app.navigationBars["Jane"].buttons["Message"].tap()
    }
    
    func testRegister() {
        
        let app = XCUIApplication()
        app.buttons["Sign up for free"].tap()
        let enterEmailTextField = app.textFields["Enter Email"]
        enterEmailTextField.tap()
        enterEmailTextField.typeText("dwdwad")
        let enterPasswordTextField = app.textFields["Enter your password"]
        enterPasswordTextField.tap()
        enterPasswordTextField.typeText("123456")
        let confirmPasswordTextField = app.textFields["Enter your password again"]
        confirmPasswordTextField.tap()
        confirmPasswordTextField.typeText("123456")
        XCUIApplication().buttons["Sign Up !"].tap()
    }
}
