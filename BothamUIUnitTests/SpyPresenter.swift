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
        executedStages.append(.ViewDidLoad)
    }

    func viewWillAppear() {
        executedStages.append(.ViewWillAppear)
    }

    func viewDidAppear() {
        executedStages.append(.ViewDidAppear)
    }

    func viewWillDisappear() {
        executedStages.append(.ViewWillDisappear)
    }

    func viewDidDisappear() {
        executedStages.append(.ViewDidDisappear)
    }

    enum Stage {
        case ViewDidLoad, ViewWillAppear, ViewDidAppear, ViewWillDisappear, ViewDidDisappear
    }
}