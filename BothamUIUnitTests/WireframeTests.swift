//
//  WireframeTests.swift
//  BothamUI
//
//  Created by Davide Mendolia on 04/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble
@testable import BothamUI

class WireframeTests: XCTestCase {

    func testPresentsRootViewController() {
        let wireframe = SpyWireframe()

        wireframe.presentInitialViewControllerInWindow(UIWindow())

        expect(wireframe.isRootViewControllerPresented).to(beTrue())
    }
}