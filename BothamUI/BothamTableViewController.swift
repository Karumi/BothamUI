//
//  BothamTableViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 17/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

// Warning: Subclass from UIViewController cannot be generic or the IB is not able to find it.
public class BothamTableViewController<T: BothamPresenter, U, V: BothamTableViewCell where U == V.ItemType>
                                      : UITableViewController, BothamUI, BothamTableViewDataSource {
    // MARK: UIViewController
    var presenter: T! = nil

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear()
    }

    public override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        presenter.viewDidAppear()
    }

    public override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        presenter.viewWillDisappear()
    }

    public override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        presenter.viewDidDisappear()
    }

    // MARK: UITableViewDataSource
    var items: [U] = []
   // public var tableViewCellReuseIdentifier: String! = nil

    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }
}

protocol BothamTableViewDataSource: NSObjectProtocol, UITableViewDataSource {
    typealias ItemType

    var items: [ItemType] { get set }
}

extension BothamTableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func itemAtIndexPath(indexPath: NSIndexPath) -> ItemType {
        return items[indexPath.item]
    }
}

public protocol BothamTableViewCell {
    typealias ItemType

    func configureForItem(item: ItemType)
}

/*
class BothamTableViewCell: UITableViewCell {

    func configureForNotification(notification: MUYNotificationViewModel) {
        logoImageView.muy_setImageWithURL(
            notification.loyaltyProgramViewModel.logoURL
        )
        brandNameLabel.text = notification.loyaltyProgramViewModel.name.uppercaseString

        if notification.read {
            contentView.backgroundColor = UIColor.blackColor()
        } else {
            contentView.backgroundColor = UIColor(rgba: "#262626")
        }
    }

}*/
