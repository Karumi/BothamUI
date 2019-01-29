//
//  BothamPullToRefreshHandler.swift
//  BothamUI
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamPullToRefreshHandler: NSObject {
    let presenter: BothamPullToRefreshPresenter
    let refreshControl = UIRefreshControl()

    public init(presenter: BothamPullToRefreshPresenter) {
        self.presenter = presenter
        super.init()
    }

    open func addTo(scrollView: UIScrollView) {
        refreshControl.addTarget(self, action: .refresh, for: .valueChanged)
        scrollView.addSubview(refreshControl)
        scrollView.alwaysBounceVertical = true
    }

    open func remove() {
        refreshControl.removeTarget(self, action: .refresh, for: .valueChanged)
        refreshControl.removeFromSuperview()
    }

    @objc func refresh(refreshControl: UIRefreshControl) {
        presenter.didStartRefreshing()
    }

    open func endRefreshing() {
        self.refreshControl.endRefreshing()
    }

    open func beginRefreshing(_ scrollView: UIScrollView) {
        scrollView.setContentOffset(CGPoint(x: 0, y: -refreshControl.frame.size.height), animated: true)
        self.refreshControl.beginRefreshing()
    }
}

private extension Selector {
    static let refresh = #selector(BothamPullToRefreshHandler.refresh(refreshControl:))
}
