//
//  BothamViewControllerTests.swift
//  BothamUITests
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble
@testable import BothamUI

class BothamViewControllerTests: XCTestCase {

    func testViewControllerLinksTheLifecycleToTheBothamPresenter() {
            let viewController = SpyWireframe().dummyViewControllerFromStoryboard()
            let presenter = SpyPresenter()
            viewController.presenter = presenter
            let animated = false

            viewController.viewDidLoad()
            viewController.viewWillAppear(animated)
            viewController.viewDidAppear(animated)
            viewController.viewWillDisappear(animated)
            viewController.viewDidDisappear(animated)

            expect(presenter.executedStages).to(equal([.ViewDidLoad,
                .ViewWillAppear, .ViewDidAppear,
                .ViewWillDisappear, .ViewDidDisappear]))
        }
}