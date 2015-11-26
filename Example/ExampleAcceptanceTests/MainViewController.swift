//
//  MainViewController.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF

class MainViewController: KIFTestCase {

    func testShouldShowCharactersTab() {
        tester().waitForViewWithAccessibilityLabel("Characters Tab")
    }

    func testShouldShowComicsTab() {
        tester().waitForViewWithAccessibilityLabel("Comics Tab")
    }

}