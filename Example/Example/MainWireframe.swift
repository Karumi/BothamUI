//
//  MainWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class MainWireframe: BothamWireframe {
    let storyboardName: String = "Main"

    func presentInitialViewControllerInWindow(window: UIWindow) {
        let viewController: UITabBarController = self.initialViewControllerFromStoryboard()
        let tabBar = viewController.tabBar
        tabBar.items?[0].accessibilityLabel = "Characters Tab"
        tabBar.items?[1].accessibilityLabel = "Comics Tab"
        self.showRootViewController(viewController, inWindow: window)
    }
}