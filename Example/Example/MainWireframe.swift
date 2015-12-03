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
    func presentInitialViewControllerInWindow(window: UIWindow) {
        let mainStoryboard = ServiceLocator.sharedInstance.provideMainStoryboard()
        let viewController: UITabBarController = mainStoryboard.initialViewController()
        let tabBar = viewController.tabBar
        tabBar.accessibilityLabel = "MainWireframe TabBar"
        window.rootViewController = viewController
    }
}