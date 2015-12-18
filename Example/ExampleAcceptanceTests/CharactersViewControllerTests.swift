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

    func testShowsSpiderManAndIronManByDefaultSuperHeroes() {
        openCharactersViewController()

        let spiderManCell = tester().waitForViewWithAccessibilityLabel("SpiderMan") as! CharacterTableViewCell
        let ironManCell = tester().waitForViewWithAccessibilityLabel("IronMan") as! CharacterTableViewCell

        expect(spiderManCell.nameLabel.text).to(equal("SpiderMan"))
        expect(ironManCell.nameLabel.text).to(equal("IronMan"))
    }

    private func openCharactersViewController() {
        let charactersViewController = ServiceLocator.sharedInstance.provideCharactersViewController()
        presentViewController(charactersViewController)
    }

}