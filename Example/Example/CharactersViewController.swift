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

class CharactersViewController: ExampleViewController, BothamTableViewController, CharactersUI, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    var dataSource: BothamTableViewDataSource<Character, CharacterTableViewCell>!
    var delegate: UITableViewDelegate!

    override func viewDidLoad() {
        tableView.dataSource = dataSource
        tableView.delegate = delegate

        pullToRefreshHandler.addTo(tableView)
        super.viewDidLoad()
    }
}

class TableViewNavigationDelegate<T: BothamDataSource, U: BothamNavigationPresenter where T.ItemType == U.ItemType>: NSObject, UITableViewDelegate {
    let dataSource: T
    let presenter: U

    init(dataSource: T, presenter: U) {
        self.dataSource = dataSource
        self.presenter = presenter
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = dataSource.itemAtIndexPath(indexPath)
        presenter.itemWasTapped(item)
    }
}