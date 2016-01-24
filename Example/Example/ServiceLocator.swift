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

    private init() { }

    private func provideMainStoryboard() -> BothamStoryboard {
        return BothamStoryboard(name: "Main")
    }

    private func provideCharactersWireframe() -> CharactersWireframe {
        return CharactersWireframe()
    }

    private func provideSeriesWireframe() -> SeriesWireframe {
        return SeriesWireframe()
    }

    func provideCharactersNavigator() -> CharactersNavigationController? {
        return navigatorContainer.resolve()
    }

    func provideSeriesNavigator() -> SeriesNavigationController? {
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

    func provideSeriesNavigationController() -> SeriesNavigationController {
        let viewController = provideSeriesViewController()
        return SeriesNavigationController(rootViewController: viewController)
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
        viewController.pullToRefreshHandler = BothamPullToRefreshHandler(presenter: presenter)
        return viewController
    }

    func provideSeriesViewController() -> SeriesViewController {
        let viewController: SeriesViewController = provideMainStoryboard().instantiateViewController()
        let presenter = SeriesPresenter(ui: viewController, wireframe: SeriesWireframe())
        viewController.presenter = presenter
        let dataSource = BothamTableViewDataSource<Series, SeriesTableViewCell>()
        viewController.dataSource = dataSource
        viewController.delegate = BothamTableViewNavigationDelegate(dataSource: dataSource, presenter: presenter)
        return viewController
    }

    func provideSeriesDetailViewController(seriesName: String) -> SeriesDetailViewController {
        let viewController: SeriesDetailViewController = provideMainStoryboard().instantiateViewController("SeriesDetailViewController")
        viewController.presenter = provideSeriesDetailPresenter(viewController, seriesName: seriesName)
        return viewController
    }

    func provideSeriesDetailPresenter(ui: SeriesDetailUI, seriesName: String) -> SeriesDetailPresenter {
        return SeriesDetailPresenter(ui: ui,seriesName: seriesName)
    }
}