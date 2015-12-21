//
//  MainViewControllerTests.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF
import Nimble
@testable import Example

class MainViewControllerTests: AcceptanceTestCase {

    func testShouldShowTwoTabBarItems() {
        expect(self.tabBar.items?.count).to(equal(2))
    }

    func testShouldShowCharactersTab() {
        let charactersTabBarItem = tabBarItemAtPosition(0)

        expect(charactersTabBarItem?.title).to(equal("Characters"))
    }

    func testShouldShowSeriesTab() {
        let comicsTabBarItem = tabBarItemAtPosition(1)

        expect(comicsTabBarItem?.title).to(equal("Series"))
    }

    private func tabBarItemAtPosition(position: Int) -> UITabBarItem? {
        return tabBar.items?[position]
    }

    private var tabBar: UITabBar {
        get {
            return tester().waitForViewWithAccessibilityLabel("MainWireframe TabBar") as! UITabBar
        }
    }

}