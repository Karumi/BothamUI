//
//  CharactersPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class CharactersPresenter: BothamPresenter, BothamPullToRefreshPresenter {
    weak var ui: CharactersUI?

    init(ui: CharactersUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        loadItems([Character(name: "SpiderMan"), Character(name: "IronMan")])
    }

    func didStartRefreshing() {
        loadItems([Character(name: "Captain America"), Character(name: "Magneto"), Character(name: "Star-Lord")])
        self.ui?.wilEndRefreshing()
    }

    private func loadItems(items: [Character]) {
        self.ui?.showItems(items)
    }
}