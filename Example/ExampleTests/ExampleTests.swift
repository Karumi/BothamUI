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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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


class FakeComicsUI: ComicsUI {
    var loaderWasShowed = false
    var loaderWasHided = false

    func showLoader() {
        loaderWasShowed = true
    }

    func hideLoader() {
        loaderWasHided = true
    }

    var itemsShowed:[Comic] = []

    func showItems(items: [Comic]) {
        itemsShowed = items
    }
}