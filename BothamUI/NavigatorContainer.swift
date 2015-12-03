//
//  NavigatorContainer.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamNavigatorContainer {
    private var container: [String : BothamNavigator] = [ : ]

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