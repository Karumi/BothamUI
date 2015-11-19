//
//  CharactersNavigationController.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

class CharactersNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeViewController = AppDelegate.service.provideCharactersViewController()
        pushViewController(homeViewController, animated: false)
    }
}