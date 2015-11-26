//
//  BothamLoadingUI.swift
//  BothamUI
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamLoadingUI: BothamUI {
    func showLoader()
    func hideLoader()
}