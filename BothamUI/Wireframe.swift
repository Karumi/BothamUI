//
//  Wireframe.swift
//  BothamUI
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public protocol BothamWireframe {
    var storyboardName: String { get }
    func presentInitialViewControllerInWindow(window: UIWindow)
}

extension BothamWireframe {
    func storyboard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: NSBundle.mainBundle())
    }

    public func initialViewControllerFromStoryboard<T>() -> T {
        let uiStoryboard = storyboard(storyboardName)
        return uiStoryboard.instantiateInitialViewController() as! T
    }
    
    public func viewControllerFromStoryboard<T>(ViewControllerIdentifier: String) -> T {
        let uiStoryboard = storyboard(storyboardName)
        return uiStoryboard.instantiateViewControllerWithIdentifier(ViewControllerIdentifier) as! T
    }

    public func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        inWindow.rootViewController = viewController
    }
}