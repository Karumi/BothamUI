//
//  UINavigationController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 04/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public extension UINavigationController {
    public func push(viewController: UIViewController, animated: Bool = true) {
        self.pushViewController(viewController, animated: animated)
    }
}