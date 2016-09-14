//
//  TableViewNavigationDelegate.swift
//  BothamUI
//
//  Created by Davide Mendolia on 03/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamTableViewNavigationDelegate<T: BothamViewDataSource, U: BothamNavigationPresenter>: NSObject, UITableViewDelegate where T.ItemType == U.ItemType {
    fileprivate let dataSource: T
    fileprivate let presenter: U

    public init(dataSource: T, presenter: U) {
        self.dataSource = dataSource
        self.presenter = presenter
    }

    open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = dataSource.item(at: indexPath)
        presenter.itemWasTapped(item)
    }
}
