//
//  HomePresenter.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class HomePresenter<U: HomeUI>: BasePresenter<MainWireframe, U> {
    override init(wireframe: MainWireframe, ui: U) {
        super.init(wireframe: wireframe, ui: ui)
    }

    override func viewDidLoad() {
        ui.showMainMessage("Welcome")
    }
}