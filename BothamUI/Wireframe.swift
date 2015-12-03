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
}

extension BothamWireframe {
    public func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        inWindow.rootViewController = viewController
    }
}