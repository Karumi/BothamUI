//
//  FakeBothamLoadingUI.swift
//  Example
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

protocol FakeBothamLoadingUI: BothamLoadingUI, BothamEmptyCaseUI {
    var loaderWasShown: Bool { get set }
    var loaderWasHidden: Bool { get set }
    var emptyCaseWasShown: Bool { get set }
    var emptyCaseWasHidden: Bool { get set }

}

extension FakeBothamLoadingUI {
    func showLoader() {
        loaderWasShown = true
    }

    func hideLoader() {
        loaderWasHidden = true
    }

    func showEmptyCase() {
        emptyCaseWasShown = true
    }

    func hideEmptyCase() {
        emptyCaseWasHidden = true
    }
}