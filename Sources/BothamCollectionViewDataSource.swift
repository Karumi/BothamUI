//
//  BothamCollectionViewDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

/**
 The _BothamCollectionViewDataSource_ class adopts the [UICollectionViewDataSource](//developer.apple.com/library/ios/documentation/UIKit/Reference/UICollectionViewDataSource_protocol/index.html#//apple_ref/occ/intf/UICollectionViewDataSource) protocol and implements the collectionView:numberOfItemsInSection: and collectionView:cellForItemAtIndexPath: methods.
*/
public class BothamCollectionViewDataSource<U, V: BothamViewCell where U == V.ItemType>
                                : NSObject, UICollectionViewDataSource, BothamViewDataSource {
    /// Items that will be used to configure cells.
    public var items: [U] = []

    public override init() {
        super.init()
    }

    /// The number of objects in the items array.
    public func collectionView(
        collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    /** 
     Dequeue the cell with the identifier corresponding to the name of [UICollectionViewCell](//developer.apple.com/library/ios/documentation/UIKit/Reference/UICollectionViewCell_class/index.html) subclass concatenate with ReuseIdentifier.
     
     ```swift
     class SampleCollectionViewCell: UICollectionViewCell, BothamViewCell {
        /*...*/
     }
     ```
     For SampleCollectionViewCell it will search for the Cell with the ReuseIdentifier "SampleCollectionViewCellReuseIdentifier" and call configureForItem method on it.

    */
    public func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
            String(V.self) + "ReuseIdentifier",
            forIndexPath: indexPath
        )
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureForItem(item)
        return cell
    }
}