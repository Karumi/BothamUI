//
//  BothamTableViewSectionsDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 11/07/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamTableViewSectionsDataSource<U: BothamViewDataSource, V: BothamViewCell where U.ItemType == V.ItemType>
: NSObject, UITableViewDataSource, BothamViewSectionsDataSource {
    public var sections = [U]()

    public override init() {
        super.init()
    }

    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(V.identifier, forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }
}
