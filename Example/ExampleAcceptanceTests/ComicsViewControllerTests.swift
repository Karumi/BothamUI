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

        waitForTableViewLoaded()
        let comicsTableView = tester().waitForViewWithAccessibilityLabel("Comics CollectionView") as! UICollectionView

        expect(comicsTableView.visibleCells().count).toOneDay(beGreaterThanOrEqualTo(3))
    }

    func testShouldShowEmptyCaseViewIfThereAreNoComics() {
        openComicsViewControllerWithoutComics()

        tester().waitForViewWithAccessibilityLabel("EmptyCaseView")
    }

    private func openComicsViewController() {
        let comicsViewController = ServiceLocator.sharedInstance.provideComicsViewController()
        presentViewController(comicsViewController)
    }

    private func openComicsViewControllerWithoutComics() {
        let comicsViewController = ServiceLocator.sharedInstance.provideComicsViewController()
        comicsViewController.presenter = MockComicsPresenter(ui: comicsViewController)
        presentViewController(comicsViewController)
    }

    private func waitForTableViewLoaded() {
        let loadingView = tester().waitForViewWithAccessibilityLabel("LoadingView")
        expect(loadingView.isVisibleInViewHierarchy()).toOneDay(beFalse())
    }

}
