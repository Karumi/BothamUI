//
//  BothamTableViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamTableViewDataSource<U, V: BothamViewCell where U == V.ItemType>
                                      : NSObject, UITableViewDataSource, BothamViewDataSource {
    public var items = [U]()

    public override init() {
        super.init()
    }

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(V.identifier, forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}