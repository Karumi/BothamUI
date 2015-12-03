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

    func provideMainStoryboard() -> BothamStoryboard {
        return BothamStoryboard(name: "Main")
    }

    func provideCharactersNavigator() -> BothamNavigator? {
        return navigatorContainer.resolve("Characters")
    }

    func provideComicsNavigator() -> BothamNavigator? {
        return navigatorContainer.resolve("Comics")
    }

    func provideCharactersWireframe() -> CharactersWireframe {
        return CharactersWireframe()
    }


    func provideInitialViewControllerFromStoryboard() -> UITabBarController {
        return provideMainStoryboard().initialViewController()
    }

    func provideHomeViewController() -> HomeViewController {
        let viewController: HomeViewController = provideMainStoryboard().viewController()
        viewController.presenter = HomePresenter(ui: viewController)
        return viewController
    }

    func provideCharactersTableViewDataSource() -> BothamTableViewDataSource<Character, CharacterTableViewCell> {
        return BothamTableViewDataSource()
    }

    func provideCharactersViewController() -> CharactersViewController {
        let viewController: CharactersViewController = provideMainStoryboard().viewController()
        let presenter = CharactersPresenter(ui: viewController, wireframe: provideCharactersWireframe())
        viewController.presenter = presenter
        let dataSource = provideCharactersTableViewDataSource()
        viewController.dataSource = dataSource
        viewController.delegate = BothamTableViewNavigationDelegate(dataSource: dataSource, presenter: presenter)
        viewController.pullToRefreshHandler = BothamPullToRefreshHandler(presenter: presenter)
        return viewController
    }

    func provideComicsViewController() -> ComicsViewController {
        let viewController: ComicsViewController = provideMainStoryboard().viewController()
        viewController.presenter = ComicsPresenter(ui: viewController)
        viewController.dataSource = BothamCollectionViewDataSource()
        return viewController
    }
}