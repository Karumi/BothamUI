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
        loadItems([Character(name: "SpiderMan", thumbnail: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")!), Character(name: "IronMan", thumbnail: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/60/55b6a28ef24fa.jpg")!)])
    }

    func didStartRefreshing() {
        loadItems([Character(name: "Captain America", thumbnail: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/80/537ba5b368b7d.jpg")!), Character(name: "Magneto", thumbnail: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/70/537bb50ecbf68.jpg")!), Character(name: "Star-Lord", thumbnail: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/a0/537bc5794cce1.jpg")!)])
        self.ui?.wilEndRefreshing()
    }

    private func loadItems(items: [Character]) {
        self.ui?.showItems(items)
    }

    func itemWasTapped(item: Character) {
        wireframe.presentCharacterDetailViewController()
    }
}