//
//  MainWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import BothamUI
import UIKit

class RootWireframe: ExampleWireframe {
    func presentInitialViewController(inWindow window: UIWindow) {
        let viewController = serviceLocator.provideRootTabBarController()
        viewController.viewControllers = self.tabsViewControllers()
        let tabBar = viewController.tabBar
        configureTabBarItems(tabBar)
        window.rootViewController = viewController
    }

    private func tabsViewControllers() -> [UIViewController] {
        let charactersNavigationController = serviceLocator.provideCharactersNavigationController()
        serviceLocator.navigatorContainer.register(navigationController: charactersNavigationController)

        let seriesNavigationController = serviceLocator.provideSeriesNavigationController()
        serviceLocator.navigatorContainer.register(navigationController: seriesNavigationController)

        return [
            charactersNavigationController,
            seriesNavigationController
        ]
    }

    private func configureTabBarItems(_ tabBar: UITabBar) {
        tabBar.accessibilityLabel = "MainWireframe TabBar"
        tabBar.tintColor = UIColor.tabBarTintColor

        let charactersIcon = UIImage(named: "tab_bar_icon_characters")
        let charactersTabBarItem = tabBar.items?[0]
        charactersTabBarItem?.image = charactersIcon?.withRenderingMode(.alwaysOriginal)
        charactersTabBarItem?.selectedImage = charactersIcon

        let comicsIcon = UIImage(named: "tab_bar_icon_comics")
        let comicsTabBarItem = tabBar.items?[1]
        comicsTabBarItem?.image = comicsIcon?.withRenderingMode(.alwaysOriginal)
        comicsTabBarItem?.selectedImage = comicsIcon
    }

}
