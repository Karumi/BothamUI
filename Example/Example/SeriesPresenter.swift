//
//  ComicsPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesPresenter: BothamPresenter {
    
    private weak var ui: SeriesUI?

    init(ui: SeriesUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        self.ui?.showLoader()
        delay(0.5) {
            self.ui?.hideLoader()

            self.ui?.showItems([Serie(cover: UIImage(named: "50b4fc783d30f")),
                Serie(cover: UIImage(named: "4fe8cb51f32e0")),
                Serie(cover: UIImage(named: "502912f2a8809")),
                Serie(cover: UIImage(named: "564a1abbcf9b0"))])
        }
    }
}