//
//  ExampleViewController.swift
//  Example
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class ExampleViewController<Presenter: BothamPresenter>: BothamViewController<Presenter>, BothamLoadingViewController, BothamPullToRefresh {

    let loadingView: UIView = {
        let loadingView = BothamLoadingView()
        loadingView.color = UIColor.loadingColor
        return loadingView
    }()

    var pullToRefreshHandler: BothamPullToRefreshHandler!

}