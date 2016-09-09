//
//  BothamDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamViewDataSource {
    associatedtype ItemType

    var items: [ItemType] { get set }
}

public extension BothamViewDataSource {
    public func item(atIndexPath indexPath: IndexPath) -> ItemType {
        return items[(indexPath as NSIndexPath).item]
    }
}
