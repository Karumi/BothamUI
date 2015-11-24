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
        viewController.presenter = CharactersPresenter(ui: viewController)
        viewController.dataSource = BothamTableViewDataSource()
        return viewController
    }

    func provideComicsViewController() -> ComicsViewController {
        let mainWireframe = provideMainWireframe()
        let viewController: ComicsViewController = mainWireframe.viewControllerFromStoryboard()
        viewController.presenter = ComicsPresenter(ui: viewController)
        viewController.dataSource = BothamCollectionViewDataSource()
        return viewController
    }
}