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

    private func provideComicsWireframe() -> SeriesWireframe {
        return SeriesWireframe()
    }

    func provideCharactersNavigator() -> CharactersNavigationController? {
        return navigatorContainer.resolve()
    }

    func provideComicsNavigator() -> SeriesNavigationController? {
        return navigatorContainer.resolve()
    }

    func provideRootTabBarController() -> UITabBarController {
        let viewController: UITabBarController = provideMainStoryboard().instantiateViewController("RootTabBarController")
        return viewController
    }

    func provideCharactersNavigationController() -> CharactersNavigationController {
        let viewController = provideCharactersViewController()
        return CharactersNavigationController(rootViewController: viewController)
    }

    func provideComicsNavigationController() -> SeriesNavigationController {
        let viewController = provideComicsViewController()
        return SeriesNavigationController(rootViewController: viewController)
    }

    func provideCharacterDetailViewController() -> CharacterDetailViewController {
        let viewController: CharacterDetailViewController = provideMainStoryboard().instantiateViewController()
        viewController.presenter = CharacterDetailPresenter(ui: viewController)
        return viewController
    }

    private func provideCharactersTableViewDataSource() -> BothamTableViewDataSource<Character, CharacterTableViewCell> {
        return BothamTableViewDataSource()
    }

    func provideCharactersViewController() -> CharactersViewController {
        let viewController: CharactersViewController = provideMainStoryboard().instantiateViewController()
        let presenter = CharactersPresenter(ui: viewController, wireframe: provideCharactersWireframe())
        viewController.presenter = presenter
        let dataSource = provideCharactersTableViewDataSource()
        viewController.dataSource = dataSource
        viewController.delegate = BothamTableViewNavigationDelegate(dataSource: dataSource, presenter: presenter)
        viewController.pullToRefreshHandler = BothamPullToRefreshHandler(presenter: presenter)
        return viewController
    }

    func provideComicsViewController() -> SeriesViewController {
        let viewController: SeriesViewController = provideMainStoryboard().instantiateViewController()
        viewController.presenter = SeriesPresenter(ui: viewController)
        viewController.dataSource = BothamTableViewDataSource()
        return viewController
    }
}