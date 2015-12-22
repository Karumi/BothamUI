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
    var dataSource: BothamTableViewDataSource<Serie, SerieTableViewCell>!
    var delegate: UITableViewDelegate!

    override func viewDidLoad() {
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.tableFooterView = UIView()
        tableView.accessibilityLabel = "SeriesTableView"
        super.viewDidLoad()
    }

}