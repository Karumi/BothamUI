//
//  BothamLoadingViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamLoadingViewController: BothamLoadingUI {
    var currentLoadingView: UIView { get }
    var view: UIView! { get }
}

public extension BothamLoadingViewController {
    func showLoader() {
        view.addSubview(currentLoadingView)
        currentLoadingView.center = view.center
    }

    func hideLoader() {
        currentLoadingView.removeFromSuperview()
    }
}
