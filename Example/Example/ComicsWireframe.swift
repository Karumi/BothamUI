//
//  ComicsWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

class ComicsWireframe {
    var serviceLocator: ServiceLocator {
        return ServiceLocator.sharedInstance
    }

    func presentComicsViewController() {
        let viewController = serviceLocator.provideComicsViewController()
        serviceLocator.provideComicsNavigator()?.push(viewController, animated: false)
    }
}