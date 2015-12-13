//
//  ComicsPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class ComicsPresenter: BothamPresenter {
    private weak var ui: ComicsUI?

    init(ui: ComicsUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        self.ui?.showLoader()
        delay(0.5) {
            let comics = [Comic(cover: UIImage(named: "50b4fc783d30f")),
                Comic(cover: UIImage(named: "4fe8cb51f32e0")),
                Comic(cover: UIImage(named: "502912f2a8809")),
                Comic(cover: UIImage(named: "564a1abbcf9b0"))]
            self.showComics(comics)
        }
    }

    private func showComics(comics: [Comic]) {
            self.ui?.hideLoader()
        if comics.isEmpty {
            self.ui?.showEmptyCase()
        } else {
            self.ui?.hideEmptyCase()
            self.ui?.showItems(comics)
        }
    }
}