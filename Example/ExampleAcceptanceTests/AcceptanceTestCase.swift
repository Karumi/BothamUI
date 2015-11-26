//
//  AcceptanceTest.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF

class AcceptanceTestCase: KIFTestCase {

    var originalRootViewController: UIViewController?

    override func tearDown() {
        super.tearDown()
        if let originalRootViewController = originalRootViewController {
            rootViewController = originalRootViewController
        }
    }

    func presentViewController(viewController: UIViewController) {
        originalRootViewController = rootViewController
        rootViewController = viewController
    }

    private var rootViewController: UIViewController? {
        get {
            return UIApplication.sharedApplication().keyWindow?.rootViewController
        }

        set(newRootViewController) {
            UIApplication.sharedApplication().keyWindow?.rootViewController = newRootViewController
        }
    }
}