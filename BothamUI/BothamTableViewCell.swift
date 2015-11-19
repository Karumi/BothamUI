//
//  BothamTableViewCell.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamTableViewCell {
    typealias ItemType

    func configureForItem(item: ItemType)
}