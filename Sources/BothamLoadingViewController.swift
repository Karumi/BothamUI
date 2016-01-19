//
//  BothamLoadingViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamLoadingViewController: BothamLoadingUI {
    var loadingView: UIView { get }
    var view: UIView! { get }
}

public extension BothamLoadingViewController {
    func showLoader() {
        guard !view.subviews.contains(loadingView) else {
            return
        }

        loadingView.hidden = false
        loadingView.bounds = view.bounds
        loadingView.autoresizingMask = [
            .FlexibleBottomMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleTopMargin
        ]

        view.addSubview(loadingView)
    }

    func hideLoader() {
        loadingView.removeFromSuperview()
        loadingView.hidden = true
    }
}
