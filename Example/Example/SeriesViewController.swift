//
//  ComicsViewController.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI

class SeriesViewController: ExampleViewController, BothamTableViewController, SeriesUI {

    @IBOutlet var tableView: UITableView!
    var dataSource: BothamTableViewDataSource<Series, SeriesTableViewCell>!
    var delegate: UITableViewDelegate!

    override func viewDidLoad() {
        configureTableView()
        configureNavigationBarBackButton()
        super.viewDidLoad()
    }

    private func configureTableView() {
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.tableFooterView = UIView()
        tableView.accessibilityLabel = "SeriesTableView"
    }

    private func configureNavigationBarBackButton() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }

}