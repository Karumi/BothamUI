//
//  FakeBothamLoadingUI.swift
//  Example
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

protocol FakeBothamLoadingUI: BothamLoadingUI {
    var loaderWasShowed: Bool { get set }
    var loaderWasHided: Bool { get set }
}

extension FakeBothamLoadingUI {
    func showLoader() {
        loaderWasShowed = true
    }

    func hideLoader() {
        loaderWasHided = true
    }
}