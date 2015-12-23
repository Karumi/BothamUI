//
//  NavigationPresenter.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamNavigationPresenter: BothamPresenter {
    typealias ItemType
    func itemWasTapped(item: ItemType)
}