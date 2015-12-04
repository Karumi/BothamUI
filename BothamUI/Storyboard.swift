//
//  Storyboard.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public struct BothamStoryboard {
    private let name: String

    public init(name: String) {
        self.name = name
    }

    private func storyboard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: NSBundle.mainBundle())
    }

    public func initialViewController<T>() -> T {
        let uiStoryboard = storyboard(name)
        return uiStoryboard.instantiateInitialViewController() as! T
    }

    public func viewController<T>(viewControllerIdentifier: String) -> T {
        let uiStoryboard = storyboard(name)
        return uiStoryboard.instantiateViewControllerWithIdentifier(viewControllerIdentifier) as! T
    }

    public func viewController<T>() -> T {
        return viewController(String(T.self))
    }
}