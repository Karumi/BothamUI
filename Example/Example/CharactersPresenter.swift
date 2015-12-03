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
    weak var ui: CharactersUI?
    let navigator: BothamNavigator?

    init(ui: CharactersUI, navigator: BothamNavigator?) {
        self.ui = ui
        self.navigator = navigator
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

    func itemWasTapped(item: Character) {
        let detailViewController = ServiceLocator.SharedInstance.provideHomeViewController()
        navigator?.goTo(detailViewController)
    }
}