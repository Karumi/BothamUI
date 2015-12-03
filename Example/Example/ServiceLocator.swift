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

    static let SharedInstance = ServiceLocator()
    let navigatorContainer = BothamNavigatorContainer()

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

    func provideCharactersTableViewDataSource() -> BothamTableViewDataSource<Character, CharacterTableViewCell> {
        return BothamTableViewDataSource()
    }

    func provideCharactersViewController() -> CharactersViewController {
        let mainWireframe = provideMainWireframe()
        let viewController: CharactersViewController = mainWireframe.viewControllerFromStoryboard()
        let presenter = CharactersPresenter(ui: viewController, wireframe: ServiceLocator.SharedInstance.provideMainWireframe())
        viewController.presenter = presenter
        let dataSource = provideCharactersTableViewDataSource()
        viewController.dataSource = dataSource
        viewController.delegate = BothamTableViewNavigationDelegate(dataSource: dataSource, presenter: presenter)
        viewController.pullToRefreshHandler = BothamPullToRefreshHandler(presenter: presenter)
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