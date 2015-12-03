//
//  HomePresenter.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class HomePresenter: BothamPresenter {
    let ui: HomeUI

    init(ui: HomeUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        ui.showMainMessage("Welcome")
    }
}