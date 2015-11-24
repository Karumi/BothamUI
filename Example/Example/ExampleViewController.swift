//
//  ExampleViewController.swift
//  Example
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class ExampleViewController<T:BothamPresenter>: BothamViewController<T>, BothamLoadingUI {
    let currentLoadingView: LoadingView = LoadingView()

    func showLoader() {
        view.addSubview(currentLoadingView)
    }

    func hideLoader() {
        currentLoadingView.removeFromSuperview()
    }
}