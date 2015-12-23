//
//  BothamPullToRefresh.swift
//  BothamUI
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamPullToRefresh {
    var pullToRefreshHandler: BothamPullToRefreshHandler! { get }
}

public extension BothamPullToRefresh {
    public func stopRefreshing() {
        pullToRefreshHandler.endRefreshing()
    }
}