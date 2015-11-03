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

    func testWireframe() {
        // Given
        let wireframe = FakeWireframe()
        // When
        wireframe.presentRootViewControllerInWindow(UIWindow())
        // Then
        XCTAssertTrue(wireframe.isRootViewControllerPresented)
    }

    func testViewControllerPresenterStateTransitions() {
        // Given
        let viewController = FakeWireframe().fakeViewControllerFromStoryboard()
        let presenter = FakePresenter()
        viewController.presenter = presenter
        let animated = false

        // When
        viewController.viewDidLoad()
        // Then
        XCTAssertTrue(presenter.viewDidLoadCalled)

        // When
        viewController.viewWillAppear(animated)
        // Then
        XCTAssertTrue(presenter.viewWillAppearCalled)

        // When
        viewController.viewDidAppear(animated)
        // Then
        XCTAssertTrue(presenter.viewDidAppearCalled)

        // When
        viewController.viewWillDisappear(animated)
        // Then
        XCTAssertTrue(presenter.viewWillDisappearCalled)

        // When
        viewController.viewDidDisappear(animated)
        // Then
        XCTAssertTrue(presenter.viewDidDisappearCalled)
    }
}