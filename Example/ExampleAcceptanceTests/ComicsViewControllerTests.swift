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

class ComicsViewControllerTests: AcceptanceTestCase {

    func testShouldShowLoadingView() {
        openComicsViewController()

        tester().waitForViewWithAccessibilityLabel("LoadingView")
    }

    func testShouldShowThreeComics() {
        openComicsViewController()

        let comicsTableView = tester().waitForViewWithAccessibilityLabel("Comics CollectionView") as! UICollectionView

        expect(comicsTableView.visibleCells().count).toEventually(beGreaterThanOrEqualTo(3))
    }

    private func openComicsViewController() {
        let comicsViewController = ServiceLocator.SharedInstance.provideComicsViewController()
        presentViewController(comicsViewController)
    }

}
