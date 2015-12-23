//
//  ExampleViewController.swift
//  Example
//
//  Created by Davide Mendolia on 24/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class ExampleViewController: BothamViewController, BothamLoadingViewController, BothamPullToRefresh, BothamEmptyCaseViewController {

    let currentLoadingView: UIView = {
        let loadingView = LoadingView()
        loadingView.color = UIColor.loadingColor
        return loadingView
    }()
    let currentEmptyCaseView: UIView = {
        let emptyCaseView = EmptyCaseView()
        emptyCaseView.textColor = UIColor.emptyCaseColor
        return emptyCaseView
    }()
    var pullToRefreshHandler: BothamPullToRefreshHandler!

}