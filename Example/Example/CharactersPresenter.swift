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
    private weak var ui: CharactersUI?
    private let wireframe: CharactersWireframe

    init(ui: CharactersUI, wireframe: CharactersWireframe) {
        self.ui = ui
        self.wireframe = wireframe
    }

    func viewDidLoad() {
        load(items: [
            Character(name: "Spider-Man", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")!),
            Character(name: "Iron Man", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/60/55b6a28ef24fa.jpg")!),
            Character(name: "Scarlet Witch", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/b0/537bc2375dfb9.jpg")!),
            Character(name: "Hulk", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/e/e0/537bafa34baa9.jpg")!),
            Character(name: "Wolverine", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/00/537bcb1133fd7.jpg")!),
            Character(name: "Storm", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/c/b0/537bc5f8a8df0.jpg")!),
            Character(name: "Ultron", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/a0/537bc7f6d5d23.jpg")!),
            Character(name: "BlackPanther", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/03/537ba26276348.jpg")!),
            Character(name: "Winter Soldier", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/7/40/537bca868687c.jpg")!),
            Character(name: "Captain Marvel", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/30/537ba61b764b4.jpg")!),
            Character(name: "Iron Fist", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/6/60/537bb1756cd26.jpg")!),
            ])
    }

    func didStartRefreshing() {
        load(items: [
            Character(name: "Captain America", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/80/537ba5b368b7d.jpg")!),
            Character(name: "Magneto", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/70/537bb50ecbf68.jpg")!),
            Character(name: "Star-Lord", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/a0/537bc5794cce1.jpg")!),
            Character(name: "SpiderMan", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")!),
            Character(name: "IronMan", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/60/55b6a28ef24fa.jpg")!),
            Character(name: "Scarlet Witch", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/b0/537bc2375dfb9.jpg")!),
            Character(name: "Hulk", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/e/e0/537bafa34baa9.jpg")!),
            Character(name: "Wolverine", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/00/537bcb1133fd7.jpg")!),
            Character(name: "Storm", thumbnail: URL(string: "https://x.annihil.us/u/prod/marvel/i/mg/c/b0/537bc5f8a8df0.jpg")!),
            Character(name: "Ultron", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/a0/537bc7f6d5d23.jpg")!),
            Character(name: "BlackPanther", thumbnail: URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/03/537ba26276348.jpg")!),
            ])

        self.ui?.stopRefreshing()
    }

    private func load(items: [Character]) {
        self.ui?.show(items: items)
    }
}
