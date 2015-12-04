//
//  FakeCharactersWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 04/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
@testable import Example

class FakeCharactersWireframe: CharactersWireframe {
    var characterDetailViewControllerWasPresented = false

    override func presentCharacterDetailViewController() {
        super.presentCharacterDetailViewController()
        characterDetailViewControllerWasPresented = true
    }
}
