//
//  BothamCollectionViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamCollectionViewController: class {
    var collectionView: UICollectionView! { get }
    associatedtype CollectionViewDataSourceType: BothamViewDataSource
    var dataSource: CollectionViewDataSourceType! { get set }
}


extension BothamCollectionViewController {
    public func show(items: [CollectionViewDataSourceType.ItemType]) {
        dataSource.items = items
        collectionView.reloadData()
    }
}
