//
//  ComicsNavigationControllerTests.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//


import Foundation
import KIF
import Nimble
@testable import Example

class SeriesViewControllerTests: AcceptanceTestCase {

    func testShouldShowLoadingView() {
        openSeriesViewController()

        tester().waitForViewWithAccessibilityLabel("LoadingView")
    }

    func testShouldShowSeventeenSeries() {
        openSeriesViewController()

        waitForTableViewLoaded()
        let seriesTableView = tester().waitForViewWithAccessibilityLabel("SeriesTableView") as! UITableView

        expect(seriesTableView.numberOfRowsInSection(0)).toEventually(equal(17))
    }

    private func openSeriesViewController() {
        let seriesViewController = ServiceLocator.sharedInstance.provideSeriesNavigationController()
        presentViewController(seriesViewController)
    }

    private func waitForTableViewLoaded() {
        let loadingView = tester().waitForViewWithAccessibilityLabel("LoadingView")
        expect(loadingView.isVisibleInViewHierarchy()).toOneDay(beFalse())
    }

}
