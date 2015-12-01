//
//  BothamTableViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 17/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamTableViewController {
    var tableView: UITableView! { get }
    typealias TableViewCellType: BothamViewCell
    var dataSource: BothamTableViewDataSource<TableViewCellType.ItemType, TableViewCellType>! { get }
    var delegate: UITableViewDelegate! { get }
}

extension BothamTableViewController {
    public func showItems(items: [TableViewCellType.ItemType]) {
        dataSource.items = items
        tableView.reloadData()
    }
}