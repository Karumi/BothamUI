//
//  SpyPresenter.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SpyPresenter: BothamPresenter {

    var executedStages: [Stage] = []

    func viewDidLoad() {
        executedStages.append(.viewDidLoad)
    }

    func viewWillAppear() {
        executedStages.append(.viewWillAppear)
    }

    func viewDidAppear() {
        executedStages.append(.viewDidAppear)
    }

    func viewWillDisappear() {
        executedStages.append(.viewWillDisappear)
    }

    func viewDidDisappear() {
        executedStages.append(.viewDidDisappear)
    }

    enum Stage {
        case viewDidLoad, viewWillAppear, viewDidAppear, viewWillDisappear, viewDidDisappear
    }
}
