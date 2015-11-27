//
//  FakeCharactersUI.swift
//  Example
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
@testable import Example
import BothamUI

class FakeCharactersUI: CharactersUI, FakeBothamPullToResfreshUI {
    var itemsShowed:[Example.Character] = []
    var didRefresh = false

    func showItems(items: [Example.Character]) {
        itemsShowed = items
    }
}