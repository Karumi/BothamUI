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
    private let bundle: NSBundle

    public init(name: String, bundle: NSBundle = NSBundle.mainBundle()) {
        self.name = name
        self.bundle = bundle
    }

    private func storyboard(name: String, bundle: NSBundle) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: bundle)
    }

    public func initialViewController<T>() -> T {
        let uiStoryboard = storyboard(name, bundle: bundle)
        return uiStoryboard.instantiateInitialViewController() as! T
    }

    public func instantiateViewController<T>(viewControllerIdentifier: String) -> T {
        let uiStoryboard = storyboard(name, bundle: bundle)
        return uiStoryboard.instantiateViewControllerWithIdentifier(viewControllerIdentifier) as! T
    }

    public func instantiateViewController<T>() -> T {
        return instantiateViewController(String(T.self))
    }
}