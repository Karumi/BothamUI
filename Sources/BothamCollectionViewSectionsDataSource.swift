//
//  BothamCollectionViewSectionsDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 11/07/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamCollectionViewSectionsDataSource<U: BothamViewDataSource, V: BothamViewCell where U.ItemType == V.ItemType>
: NSObject, UICollectionViewDataSource, BothamViewSectionsDataSource {
    public var sections = [U]()

    public override init() {
        super.init()
    }

    public func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return sections.count
    }

    public func collectionView(
        collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        return sections[section].items.count
    }

    public func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
            V.reuseIdentifier,
            forIndexPath: indexPath
        )
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }
}
