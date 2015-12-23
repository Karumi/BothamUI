//
//  NavigatorContainer.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamNavigatorContainer {
    private var container: [String : UINavigationController] = [ : ]

    public init() {
    }

    public func register<T: UINavigationController>(navigationController: T) -> T {
        container[String(T.self)] = navigationController
        return navigationController
    }

    public func resolve<T: UINavigationController>() -> T? {
        return (container[String(T.self)] as! T)
    }
}