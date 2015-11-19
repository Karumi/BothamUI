//
//  BothamTableViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

<<<<<<< HEAD
public class BothamTableViewDataSource<U, V: BothamTableViewCell where U == V.ItemType>
                                      : NSObject, UITableViewDataSource {
=======
public class BothamTableViewDataSource<U, V: BothamViewCell where U == V.ItemType>: NSObject, UITableViewDataSource {
>>>>>>> 5346ee4... Add support of CollectionView
    public var items: [U] = []

    public override init() {
        super.init()
    }

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(V.self) + "Identifier", forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    public func itemAtIndexPath(indexPath: NSIndexPath) -> U {
        return items[indexPath.item]
    }
}