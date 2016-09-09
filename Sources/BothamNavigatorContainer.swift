//
//  NavigatorContainer.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamNavigatorContainer {
    fileprivate var container: [String : UINavigationController] = [ : ]

    public init() {
    }

    open func register<T: UINavigationController>(navigationController: T) -> T {
        container[String(describing: T.self)] = navigationController
        return navigationController
    }

    open func resolve<T: UINavigationController>() -> T? {
        return (container[String(describing: T.self)] as! T)
    }
}
