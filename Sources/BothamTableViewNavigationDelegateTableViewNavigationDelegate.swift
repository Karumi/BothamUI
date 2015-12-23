//
//  TableViewNavigationDelegate.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamTableViewNavigationDelegate<T: BothamViewDataSource, U: BothamNavigationPresenter where T.ItemType == U.ItemType>: NSObject, UITableViewDelegate {
    private let dataSource: T
    private let presenter: U

    public init(dataSource: T, presenter: U) {
        self.dataSource = dataSource
        self.presenter = presenter
    }

    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = dataSource.itemAtIndexPath(indexPath)
        presenter.itemWasTapped(item)
    }
}