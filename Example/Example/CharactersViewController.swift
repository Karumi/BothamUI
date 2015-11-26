//
//  CharactersViewController.swift
//  Example
//
//  Created by Davide Mendolia on 17/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI

class CharactersViewController: BothamViewController, BothamTableViewController, CharactersUI {
    @IBOutlet var tableView: UITableView!
    var dataSource: BothamTableViewDataSource<Character, CharacterTableViewCell>!
    var pullToRefreshHandler: BothamPullToRefreshHandler!

    override func viewDidLoad() {
        tableView.dataSource = dataSource

        pullToRefreshHandler.addTo(tableView)
        super.viewDidLoad()
    }

    func wilEndRefreshing() {
        pullToRefreshHandler.endRefreshing()
    }
}