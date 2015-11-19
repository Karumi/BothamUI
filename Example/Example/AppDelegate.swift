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

    let wireframe = MainWireframe()


    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        installRootViewControllerIntoWindow(window!)

        return true
    }

    func installRootViewControllerIntoWindow(window: UIWindow) {
        wireframe.presentInitialViewControllerInWindow(window)
    }
}

