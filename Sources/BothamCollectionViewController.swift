//
//  BothamCollectionViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public protocol BothamCollectionViewController: class {
    var collectionView: UICollectionView! { get }
    typealias CollectionViewDataSourceType: BothamViewDataSource
    var dataSource: CollectionViewDataSourceType! { get set }
}


extension BothamCollectionViewController {
    public func showItems(items: [CollectionViewDataSourceType.ItemType]) {
        dataSource.items = items
        collectionView.reloadData()
    }
}