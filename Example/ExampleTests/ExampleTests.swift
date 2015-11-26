//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Davide Mendolia on 25/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble
@testable import Example
import BothamUI

class ExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShowListOfCovers() {
        let fakeComicsUI = FakeComicsUI()
        let presenter = ComicsPresenter(ui: fakeComicsUI)

        presenter.viewDidLoad()

        expect(fakeComicsUI.loaderWasShowed).to(beTrue())
        expect(fakeComicsUI.itemsShowed.count).toEventually(equal(4))
        expect(fakeComicsUI.loaderWasHided).toEventually(beTrue())
    }
}