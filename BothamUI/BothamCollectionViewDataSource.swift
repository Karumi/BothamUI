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
                                : NSObject, UICollectionViewDataSource, BothamDataSource {
    public var items: [U] = []
    public var reuseIdentifierForItem: U -> String = { _ in
        return String(V.self) + "ReuseIdentifier"
    }

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
        let item = itemAtIndexPath(indexPath)

        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
            reuseIdentifierForItem(item),
            forIndexPath: indexPath
        )
        (cell as! V).configureForItem(item)
        return cell
    }
}