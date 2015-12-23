//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Davide Mendolia on 25/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble
import BothamUI
@testable import Example

class ExampleTests: XCTestCase {
    
    func testShowListOfSeries() {
        let expectation = expectationWithDescription("Covers will be shown")
        let fakeSeriesUI = FakeSeriesUI(expectation: expectation)
        let presenter = SeriesPresenter(ui: fakeSeriesUI, wireframe: FakeSeriesWireframe())

        presenter.viewDidLoad()

        waitForExpectationsWithTimeout(10, handler: nil)
        expect(fakeSeriesUI.loaderWasShowed).to(beTrue())
        expect(fakeSeriesUI.itemsShowed.count).toOneDay(equal(17))
        expect(fakeSeriesUI.loaderWasHided).toOneDay(beTrue())
    }

    func testResfreshTableOfCharacters() {
        let fakeCharactersUI = FakeCharactersUI()
        let presenter = CharactersPresenter(ui: fakeCharactersUI, wireframe: CharactersWireframe())

        presenter.didStartRefreshing()

        expect(fakeCharactersUI.itemsShowed.count).to(equal(11))
        expect(fakeCharactersUI.didRefresh).to(beTrue())
    }

    func testPresentCharacterDetailFromCharacterList() {
        let fakeSeriesUI = FakeSeriesUI()
        let fakeSeriesWireframe = FakeSeriesWireframe()
        let presenter = SeriesPresenter(ui: fakeSeriesUI, wireframe: fakeSeriesWireframe)

        let series = Series(name: "IronMan")
        presenter.itemWasTapped(series)

        expect(fakeSeriesWireframe.seriesDetailViewControllerWasPresented).to(beTrue())
    }
}