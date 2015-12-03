//
//  CharactersWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

class CharactersWireframe {
    var serviceLocator: ServiceLocator {
        return ServiceLocator.SharedInstance
    }

    func presentCharactersViewController() {
        let viewController = serviceLocator.provideCharactersViewController()
        serviceLocator.provideCharactersNavigator()?.goTo(viewController)
    }

    func presentCharacterDetailViewController() {
        let viewController = serviceLocator.provideHomeViewController()
        serviceLocator.provideCharactersNavigator()?.goTo(viewController)
    }
}