//
//  BothamPullToRefreshHandler.swift
//  BothamUI
//
//  Created by Davide Mendolia on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamPullToRefreshHandler: NSObject {
    private let presenter: BothamPullToRefreshPresenter
    private let refreshControl = UIRefreshControl()
    private var scrollView: UIScrollView?
    

    public init(presenter: BothamPullToRefreshPresenter) {
        self.presenter = presenter
        super.init()
    }

    public func addTo(scrollView: UIScrollView) {
        self.scrollView = scrollView
        refreshControl.addTarget(self, action:#selector(BothamPullToRefreshHandler.refresh(_:)), forControlEvents: .ValueChanged)
        scrollView.addSubview(refreshControl)
        scrollView.alwaysBounceVertical = true
    }

    public func remove() {
        refreshControl.removeTarget(self, action:#selector(BothamPullToRefreshHandler.refresh(_:)), forControlEvents: .ValueChanged)
        refreshControl.removeFromSuperview()
    }

    func refresh(refreshControl: UIRefreshControl) {
        presenter.didStartRefreshing()
    }

    public func endRefreshing() {
        self.refreshControl.endRefreshing()
    }

    public func beginRefreshing() {
        if scrollView?.contentOffset.y == 0 {
            scrollView?.setContentOffset(CGPoint(x: 0, y: -refreshControl.frame.size.height), animated: true)
            self.refreshControl.beginRefreshing()
        }
    }
    
    public func isRefreshing() -> Bool {
        return self.refreshControl.refreshing
    }
}