//
//  BothamCollectionViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public class BothamCollectionViewDataSource<U, V: BothamViewCell where U == V.ItemType>
                                : NSObject, UICollectionViewDataSource, BothamViewDataSource {
    public var items = [U]()

    public override init() {
        super.init()
    }

    public func collectionView(
        collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        return items.count
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