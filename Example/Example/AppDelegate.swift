//
//  AppDelegate.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    static let wireframe = MainWireframe()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        AppDelegate.installRootViewControllerIntoWindow(window!)

        return true
    }

    static func installRootViewControllerIntoWindow(window: UIWindow) {
        wireframe.presentInitialViewControllerInWindow(window)
    }
}

