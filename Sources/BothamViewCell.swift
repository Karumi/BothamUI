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

    associatedtype ItemType
    func configure(forItem item: ItemType)
}

public extension BothamViewCell {
    public static var reuseIdentifier: String { return String(describing: Self.self) + "ReuseIdentifier" }
    public static var identifier: String { return String(describing: Self.self) + "Identifier" }
}
