//
//  BothamUITests.swift
//  BothamUITests
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
@testable import BothamUI

class BothamUITests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testWireframe() {
        let wireframe = FakeWireframe()
        wireframe.presentRootViewControllerInWindow(UIWindow())
        XCTAssertTrue(wireframe.isRootViewControllerPresented)
    }

    func testViewControllerPresenterStateTransitions() {
        let viewController = FakeWireframe().fakeViewControllerFromStoryboard()
        let presenter = FakePresenter()
        viewController.presenter = presenter

        viewController.viewDidLoad()

        XCTAssertTrue(presenter.viewDidLoadCalled)

        let animated = false

        viewController.viewWillAppear(animated)

        XCTAssertTrue(presenter.viewWillAppearCalled)

        viewController.viewDidAppear(animated)

        XCTAssertTrue(presenter.viewDidAppearCalled)

        viewController.viewWillDisappear(animated)

        XCTAssertTrue(presenter.viewWillDisappearCalled)

        viewController.viewDidDisappear(animated)

        XCTAssertTrue(presenter.viewDidDisappearCalled)
    }
}