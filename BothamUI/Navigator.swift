//
//  Navigator.swift
//  BothamUI
//
//  Created by Davide Mendolia on 02/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public class BothamNavigator {
    weak var navigationController: UINavigationController!

    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func goTo(viewController: UIViewController, animated: Bool = true) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
}

public class BothamNavigatorContainer {
    var container: [String : BothamNavigator] = [ : ]

    public init() {
    }

    public func register(name: String, navigationController: UINavigationController) -> BothamNavigator {
        let navigator = BothamNavigator(navigationController: navigationController)
        container[name] = navigator
        return navigator
    }

    public func resolve(name: String) -> BothamNavigator? {
        return container[name]
    }
}