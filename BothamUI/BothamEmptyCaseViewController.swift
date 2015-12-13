//
//  BothamEmptyCaseViewController.swift
//  BothamUI
//
//  Created by Pedro Vicente Gomez on 13/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamEmptyCaseViewController : BothamEmptyCaseUI {
    var currentEmptyCaseView: UIView { get }
    var view: UIView! { get }
}

public extension BothamEmptyCaseViewController {
    func showEmptyCase() {
        view.addSubview(currentEmptyCaseView)
        currentEmptyCaseView.hidden = false
        currentEmptyCaseView.center = view.center
    }

    func hideEmptyCase() {
        currentEmptyCaseView.removeFromSuperview()
        currentEmptyCaseView.hidden = true
    }
}
