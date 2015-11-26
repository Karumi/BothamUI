//
//  FakeCharactersUI.swift
//  Example
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
@testable import Example

class FakeCharactersUI: CharactersUI {
    var itemsShowed:[Example.Character] = []

    func showItems(items: [Example.Character]) {
        itemsShowed = items
    }
}