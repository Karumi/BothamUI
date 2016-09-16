//
//  CharactersNavigationControllerTests.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF
import Nimble
@testable import Example

class CharactersViewControllerTests: AcceptanceTestCase {

    func testShowsDefaultSuperHeroes() {
        openCharactersViewController()

        let tableView = tester().waitForView(withAccessibilityLabel: "CharactersTableView") as! UITableView
        let spiderManCell = tester().waitForView(withAccessibilityLabel: "Spider-Man") as! CharacterTableViewCell
        let ironManCell = tester().waitForView(withAccessibilityLabel: "Iron Man") as! CharacterTableViewCell

        expect(spiderManCell.nameLabel.text).to(equal("Spider-Man"))
        expect(ironManCell.nameLabel.text).to(equal("Iron Man"))
        expect(tableView.numberOfRows(inSection: 0)).toEventually(equal(11))
    }

    private func openCharactersViewController() {
        let charactersViewController = ServiceLocator.sharedInstance.provideCharactersViewController()
        presentViewController(viewController: charactersViewController)
    }

}
