//
//  CharactersPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class CharactersPresenter: BothamPresenter, BothamPullToRefreshPresenter, BothamNavigationPresenter {
    private weak var ui: CharactersUI?
    private let wireframe: CharactersWireframe

    init(ui: CharactersUI, wireframe: CharactersWireframe) {
        self.ui = ui
        self.wireframe = wireframe
    }

    func viewDidLoad() {
        loadItems([Character(name: "SpiderMan"), Character(name: "IronMan")])
    }

    func didStartRefreshing() {
        loadItems([Character(name: "Captain America"), Character(name: "Magneto"), Character(name: "Star-Lord")])
        self.ui?.wilEndRefreshing()
    }

    private func loadItems(items: [Character]) {
        if items.isEmpty {
            self.ui?.showEmptyCase()
        } else {
            self.ui?.hideEmptyCase()
            self.ui?.showItems(items)
        }
    }

    func itemWasTapped(item: Character) {
        wireframe.presentCharacterDetailViewController()
    }
}