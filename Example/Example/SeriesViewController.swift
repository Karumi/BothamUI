//
//  ComicsViewController.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI


class SeriesViewController: ExampleViewController, BothamCollectionViewController, SeriesUI, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!
    var dataSource: BothamCollectionViewDataSource<Serie, SerieCollectionViewCell>!

    override func viewDidLoad() {
        collectionView.accessibilityLabel = "SeriesCollectionView"
        collectionView.delegate = self
        collectionView.dataSource = dataSource
        super.viewDidLoad()
    }

    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {

            let comic = dataSource.itemAtIndexPath(indexPath)
            if var size = comic.cover?.size {
                size.width += 10
                size.height += 10
                return size
            }
            return CGSize(width: 100, height: 100)
    }

}