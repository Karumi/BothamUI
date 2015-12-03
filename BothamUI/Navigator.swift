//
//  Navigator.swift
//  BothamUI
//
//  Created by Davide Mendolia on 02/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public class BothamNavigator {
    weak var navigationController: UINavigationController!

    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func push(viewController: UIViewController, animated: Bool = true) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
}