//
//  BothamDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamDataSource {
    typealias ItemType

    var items: [ItemType] { get set }
}

public extension BothamDataSource {
    public func itemAtIndexPath(indexPath: NSIndexPath) -> ItemType {
        return items[indexPath.item]
    }
}