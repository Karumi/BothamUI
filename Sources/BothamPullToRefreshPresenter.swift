//
//  BothamPullToRefreshPresenter.swift
//  BothamUI
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamPullToRefreshPresenter: BothamPresenter {
    func didStartRefreshing()
}