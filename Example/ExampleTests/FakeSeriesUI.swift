//
//  FakeComicsUI.swift
//  Example
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import XCTest
@testable import Example

class FakeSeriesUI: SeriesUI, FakeBothamLoadingUI {
    var loaderWasShown = false
    var loaderWasHidden = false
    var emptyCaseWasShown = false
    var emptyCaseWasHidden = false
    var itemsShowed:[Series] = []

    var expectation: XCTestExpectation?

    init(expectation: XCTestExpectation? = nil) {
        self.expectation = expectation
    }

    func showItems(items: [Series]) {
        itemsShowed = items
        expectation?.fulfill()
    }

    func showEmptyCase() {
        emptyCaseWasShown = true
    }

    func hideEmptyCase() {
        emptyCaseWasHidden = true
    }

}