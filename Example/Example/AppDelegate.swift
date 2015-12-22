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
        configureWindow()
        configureNavigationBarStyle()
        return true
    }

    private func installRootViewControllerIntoWindow(window: UIWindow) {
        RootWireframe().presentInitialViewControllerInWindow(window)
    }

    private func configureWindow() {
        window?.backgroundColor = UIColor.windowBackgroundColor
    }

    private func configureNavigationBarStyle() {
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.barTintColor = UIColor.navigationBarColor
        navigationBarAppearance.tintColor = UIColor.navigationBarTitleColor
        navigationBarAppearance.translucent = false
        navigationBarAppearance.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.navigationBarTitleColor,
            NSFontAttributeName : UIFont.navigationBarTitleFont
        ]
    }

}

