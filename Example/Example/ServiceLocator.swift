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

    static let sharedInstance = ServiceLocator()
    let navigatorContainer = BothamNavigatorContainer()

    private func provideMainStoryboard() -> BothamStoryboard {
        return BothamStoryboard(name: "Main")
    }

    private func provideCharactersWireframe() -> CharactersWireframe {
        return CharactersWireframe()
    }

    private func provideComicsWireframe() -> ComicsWireframe {
        return ComicsWireframe()
    }

    func provideCharactersNavigator() -> CharactersNavigationController? {
        return navigatorContainer.resolve()
    }

    func provideComicsNavigator() -> ComicsNavigationController? {
        return navigatorContainer.resolve()
    }

    func provideRootTabBarController() -> UITabBarController {
        let viewController: UITabBarController = provideMainStoryboard().viewController("RootTabBarController")
        return viewController
    }

    func provideCharactersNavigationController() -> CharactersNavigationController {
        let viewController = provideCharactersViewController()
        return CharactersNavigationController(rootViewController: viewController)
    }

    func provideComicsNavigationController() -> ComicsNavigationController {
        let viewController = provideComicsViewController()
        return ComicsNavigationController(rootViewController: viewController)
    }

    func provideHomeViewController() -> HomeViewController {
        let viewController: HomeViewController = provideMainStoryboard().viewController()
        viewController.presenter = HomePresenter(ui: viewController)
        return viewController
    }

    private func provideCharactersTableViewDataSource() -> BothamTableViewDataSource<Character, CharacterTableViewCell> {
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