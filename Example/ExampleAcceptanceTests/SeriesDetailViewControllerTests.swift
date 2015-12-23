//
//  SeriesDetailViewControllerTests.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 22/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF
import Nimble
import UIKit
@testable import Example


class SeriesDetailViewControllerTests: AcceptanceTestCase {

    let anySeriesName = "Iron Man"

    func testShouldShowHeaderInformation() {
        openSeriesDetailViewController()

        let ratingLabel = tester().waitForViewWithAccessibilityLabel("RatingLabel") as! UILabel
        let descriptionLabel = tester().waitForViewWithAccessibilityLabel("DescriptionLabel") as! UILabel

        assertShowsSeriesHeaderInformation(ratingLabel, descriptionLabel: descriptionLabel)
    }

    func testShouldShowSeriesComics() {
        openSeriesDetailViewController()

        let collectionView = tester().waitForViewWithAccessibilityLabel("ComicsCollectionView") as! UICollectionView
        let firstComicLabel = tester().waitForViewWithAccessibilityLabel("Civil War: Iron Man") as! UILabel
        let secondComicLabel = tester().waitForViewWithAccessibilityLabel("Iron Man: Execute Program") as! UILabel

        expect(collectionView.numberOfItemsInSection(0)).to(equal(15))
        expect(firstComicLabel.text).to(equal("Civil War: Iron Man"))
        expect(secondComicLabel.text).to(equal("Iron Man: Execute Program"))
    }

    private func assertShowsSeriesHeaderInformation(ratingLabel: UILabel, descriptionLabel: UILabel) {
        expect(ratingLabel.text).to(equal("T"))
        expect(descriptionLabel.text).to(equal("Extremis: It changes everything for Iron Man! The deadly "
            + "new technology from the imagination of Warren Ellis and Adi Granov "
            + "propels Tony Stark into the next gear as he takes on a super hero "
            + "Civil War and perhaps his greatest challenge yet as Director of "
            + "S.H.I.E.L.D.!"))
    }

    private func openSeriesDetailViewController() {
        let seriesViewController = ServiceLocator.sharedInstance.provideSeriesDetailViewController(anySeriesName)
        presentViewController(seriesViewController)
    }
}