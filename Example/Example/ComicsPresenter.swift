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
    weak var ui: ComicsUI?

    init(ui: ComicsUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        self.ui?.showLoader()
        delay(3) {
            self.ui?.hideLoader()

            self.ui?.showItems([Comic(cover: UIImage(named: "50b4fc783d30f")),
                Comic(cover: UIImage(named: "4fe8cb51f32e0")),
                Comic(cover: UIImage(named: "502912f2a8809")),
                Comic(cover: UIImage(named: "564a1abbcf9b0"))])
        }
    }
}