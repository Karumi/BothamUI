//
//  KIFTestCase.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF

extension KIFTestCase {

    func presentViewController(viewController: UIViewController) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
    }

}