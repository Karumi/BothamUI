//
//  BothamTableViewCell.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamViewCell {
    static var reuseIdentifier: String { get }
    static var identifier: String { get }

    typealias ItemType
    func configureForItem(item: ItemType)
}

public extension BothamViewCell {
    public static var reuseIdentifier: String { return String(Self) + "ReuseIdentifier" }
    public static var identifier: String { return String(Self) + "Identifier" }
}