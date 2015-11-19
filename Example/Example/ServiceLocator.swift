//
//  ServiceLocator.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI

// ServiceLocator or Module in Dagger 2
class ServiceLocator {

    func provideMainWireframe() -> MainWireframe {
        return MainWireframe()
    }

    func provideInitialViewControllerFromStoryboard() -> UITabBarController {
        let mainWireframe = provideMainWireframe()
        return mainWireframe.initialViewControllerFromStoryboard()
    }

    func provideHomeViewController() -> HomeViewController {
        let mainWireframe = provideMainWireframe()
        let viewController: HomeViewController = mainWireframe.viewControllerFromStoryboard()
        viewController.presenter = HomePresenter(wireframe: mainWireframe, ui: viewController)
        return viewController
    }

    func provideCharactersViewController() -> CharactersViewController {
        let mainWireframe = provideMainWireframe()
        let viewController: CharactersViewController = mainWireframe.viewControllerFromStoryboard()
        viewController.presenter = CharactersPresenter(wireframe: mainWireframe, ui: viewController)
        return viewController
    }
}