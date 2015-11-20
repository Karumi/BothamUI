//
//  ExampleUITests.swift
//  ExampleUITests
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble

class ExampleUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testShowsCharactersTab() {
        let charactersTab = XCUIApplication().tabBars.buttons["Characters"]

        expect(charactersTab.exists).to(beTrue())
    }

    func testShowsComicsTab() {
        let comicsTab = XCUIApplication().tabBars.buttons["Comics"]

        expect(comicsTab.exists).to(beTrue())
    }

}
