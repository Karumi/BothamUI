//
//  BothamTableViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 17/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamTableViewController: class {
    var tableView: UITableView! { get }
    associatedtype TableViewDataSource: BothamViewDataSource
    var dataSource: TableViewDataSource! { get set }
}

extension BothamTableViewController {
    public func show(items: [TableViewDataSource.ItemType]) {
        dataSource.items = items
        tableView.reloadData()
    }
}
