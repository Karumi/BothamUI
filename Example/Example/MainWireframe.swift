//
//  MainWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

struct MainWireframe: BothamWireframe {
    let storyboardName: String = "Main"
    let serviceLocator = ServiceLocator()

    func presentInitialViewControllerInWindow(window: UIWindow) {
        let viewController = serviceLocator.provideInitialViewControllerFromStoryboard(self)
        self.showRootViewController(viewController, inWindow: window)
    }

    func homeViewControllerFromStoryboard() -> HomeViewController {
        return self.viewControllerFromStoryboard("HomeViewController")
    }
}