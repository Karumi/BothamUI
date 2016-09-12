//
//  BothamCollectionViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamCollectionViewDataSource<U, V: BothamViewCell>
                                : NSObject, UICollectionViewDataSource, BothamViewDataSource where U == V.ItemType {
    open var items = [U]()

    open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    open func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: V.reuseIdentifier,
            for: indexPath
        )
        let item = self.item(at: indexPath)
        (cell as! V).configure(forItem: item)
        return cell
    }
}
