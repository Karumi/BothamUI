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

class SeriesViewController: ExampleViewController, BothamTableViewController, SeriesUI, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    var dataSource: BothamTableViewDataSource<Serie, SerieTableViewCell>!
    var delegate: UITableViewDelegate!

    override func viewDidLoad() {
        tableView.accessibilityLabel = "SeriesCollectionView"
        tableView.delegate = self
        tableView.dataSource = dataSource
        tableView.tableFooterView = UIView()
        super.viewDidLoad()
    }
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        let serie = dataSource.items[indexPath.row]
        let serieCell = tableView.cellForRowAtIndexPath(indexPath) as? SerieTableViewCell
        serieCell?.select()
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        (presenter as? SeriesPresenter)?.itemWasTapped(serie)
        return indexPath
    }

    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let serieCell = tableView.cellForRowAtIndexPath(indexPath) as? SerieTableViewCell
        serieCell?.deselect()
    }

}