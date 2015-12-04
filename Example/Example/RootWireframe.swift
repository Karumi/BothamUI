//
//  MainWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class RootWireframe: ExampleWireframe {
    func presentInitialViewControllerInWindow(window: UIWindow) {
        let viewController = serviceLocator.provideRootTabBarController()
        viewController.viewControllers = self.tabsViewControllers()

        let tabBar = viewController.tabBar
        tabBar.accessibilityLabel = "MainWireframe TabBar"
        window.rootViewController = viewController
    }

    private func tabsViewControllers() -> [UIViewController] {
        let charactersNavigationController = serviceLocator.provideCharactersNavigationController()
        serviceLocator.navigatorContainer.register(charactersNavigationController)

        let comicsNavigationController = serviceLocator.provideComicsNavigationController()
        ServiceLocator.sharedInstance.navigatorContainer.register(comicsNavigationController)

        return [
            charactersNavigationController,
            comicsNavigationController
        ]
    }
}