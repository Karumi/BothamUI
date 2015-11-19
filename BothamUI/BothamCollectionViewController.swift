//
//  BothamCollectionViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public protocol BothamCollectionViewController {
    var collectionView: UICollectionView! { get }
    typealias CollectionViewCellType: BothamViewCell
    var dataSource: BothamCollectionViewDataSource<CollectionViewCellType.ItemType, CollectionViewCellType>! { get }
}


extension BothamCollectionViewController {
    public func showItems(items: [CollectionViewCellType.ItemType]) {
        dataSource.items = items
        collectionView.reloadData()
    }
}