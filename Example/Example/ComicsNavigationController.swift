//
//  ComicsNavigationController.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI

class ComicsNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navigator = ServiceLocator.SharedInstance.navigatorContainer.register("Comics", navigationController: self)

        let viewController = ServiceLocator.SharedInstance.provideComicsViewController()
        navigator.goTo(viewController, animated: false)
    }
}