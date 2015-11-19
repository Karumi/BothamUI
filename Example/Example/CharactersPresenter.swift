//
//  CharactersPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class CharactersPresenter: BothamPresenter {
    weak var ui: CharactersUI?

    init(ui: CharactersUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        self.ui?.showItems([Character(name: "Spiderman"), Character(name: "IronMan")])
    }
}