//
//  MainWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class RootWireframe {
    var serviceLocator: ServiceLocator {
        return ServiceLocator.sharedInstance
    }

    func presentInitialViewControllerInWindow(window: UIWindow) {
        let viewController = serviceLocator.provideRootTabBarController()
        let tabBar = viewController.tabBar
        tabBar.accessibilityLabel = "MainWireframe TabBar"
        window.rootViewController = viewController
    }
}