//
//  HomePresenter.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class HomePresenter: BasePresenter<MainWireframe> {
    let ui: HomeUI

    init(wireframe: MainWireframe, ui: HomeUI) {
        self.ui = ui
        super.init(wireframe: wireframe)
    }

    override func viewDidLoad() {
        ui.showMainMessage("Welcome")
    }
}