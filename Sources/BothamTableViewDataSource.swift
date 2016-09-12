//
//  BothamTableViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamTableViewDataSource<U, V: BothamViewCell>
                                      : NSObject, UITableViewDataSource, BothamViewDataSource where U == V.ItemType {
    open var items = [U]()

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: V.identifier, for: indexPath)
        let item = self.item(at: indexPath)
        (cell as! V).configure(forItem: item)
        return cell
    }

    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}
