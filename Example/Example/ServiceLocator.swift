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
class ServiceLocator: SimpleIOC {

    func provideMainWireframe() -> MainWireframe {
        return MainWireframe()
    }

    func provideInitialViewControllerFromStoryboard(mainWireframe: MainWireframe) -> UITabBarController {
        return mainWireframe.initialViewControllerFromStoryboard()
    }

    func provideHomeViewController(mainWireframe: MainWireframe) -> HomeViewController {
        let viewController = mainWireframe.homeViewControllerFromStoryboard()
        viewController.presenter = HomePresenter(wireframe: mainWireframe, ui: viewController)
        return viewController
    }
}