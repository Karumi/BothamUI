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


    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        installRootViewControllerIntoWindow(window!)
        return true
    }

    func installRootViewControllerIntoWindow(window: UIWindow) {
        let wireframe = ServiceLocator.SharedInstance.provideMainWireframe()
        wireframe.presentInitialViewControllerInWindow(window)
    }
}

