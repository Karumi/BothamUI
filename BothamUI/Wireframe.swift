//
//  Wireframe.swift
//  BothamUI
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public protocol Wireframe {
    var storyboardName: String { get }
    func presentRootViewControllerInWindow(window: UIWindow)
}

extension Wireframe {
    func storyboard(name: String) -> UIStoryboard {
        let storyboard = UIStoryboard(name: name, bundle: NSBundle.mainBundle())
        return storyboard
    }

    public func viewControllerFromStoryboard<T>(ViewControllerIdentifier: String) -> T {
        let uiStoryboard = storyboard(storyboardName)
        return uiStoryboard.instantiateViewControllerWithIdentifier(ViewControllerIdentifier) as! T
    }

    public func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        inWindow.rootViewController = viewController
    }
}