//
//  MultipeerUITests.swift
//  MultipeerUITests
//
//  Created by Renee Alves on 14/09/18.
//  Copyright © 2018 Renee Alves. All rights reserved.
//

import XCTest

class MultipeerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        
        let app = XCUIApplication()
        app.buttons["HOST"].tap()
        app.buttons["JOIN"].tap()
        app.navigationBars.buttons["Cancel"].tap()
        app.buttons["SEND"].tap()
        
        app.buttons["HOST"].isEnabled
    }
    
}
