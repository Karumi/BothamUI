//
//  FakePresenter.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class FakePresenter: BothamPresenter {
    var viewDidLoadCalled = false
    var viewWillAppearCalled = false
    var viewDidAppearCalled = false
    var viewWillDisappearCalled = false
    var viewDidDisappearCalled = false

    func viewDidLoad() {
        viewDidLoadCalled = true
    }

    func viewWillAppear() {
        viewWillAppearCalled = true
    }

    func viewDidAppear(){
        viewDidAppearCalled = true
    }

    func viewWillDisappear(){
        viewWillDisappearCalled = true
    }

    func viewDidDisappear() {
        viewDidDisappearCalled = true
    }
}