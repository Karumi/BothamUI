//
//  FakeBothamPullToResfreshUI.swift
//  Example
//
//  Created by Davide Mendolia on 27/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

protocol FakeBothamPullToResfreshUI: BothamPullToResfreshUI {
    var didRefresh: Bool { get set }
}

extension FakeBothamPullToResfreshUI {
    func stopRefreshing() {
        didRefresh = true
    }
}