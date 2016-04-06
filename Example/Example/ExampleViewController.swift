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

    @objc override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @objc required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    let loadingView: UIView = {
        let loadingView = BothamLoadingView()
        loadingView.color = UIColor.loadingColor
        return loadingView
    }()

    var pullToRefreshHandler: BothamPullToRefreshHandler!

}