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

        tester().waitForView(withAccessibilityLabel: "LoadingView")
    }

    func testShouldShowSeventeenSeries() {
        openSeriesViewController()

        waitForTableViewLoaded()
        let seriesTableView = tester().waitForView(withAccessibilityLabel: "SeriesTableView") as! UITableView

        expect(seriesTableView.numberOfRows(inSection: 0)).toEventually(equal(17))
    }

    private func openSeriesViewController() {
        let seriesViewController = ServiceLocator.sharedInstance.provideSeriesNavigationController()
        presentViewController(viewController: seriesViewController)
    }

    private func waitForTableViewLoaded() {
        let loadingView = tester().waitForView(withAccessibilityLabel: "LoadingView")
        expect(loadingView?.isVisibleInViewHierarchy()).toOneDay(matcher: beFalse())
    }

}
