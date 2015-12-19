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


class ComicsViewController: ExampleViewController, BothamCollectionViewController, ComicsUI, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!
    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!

    override func viewDidLoad() {
        collectionView.accessibilityLabel = "Comics CollectionView"
        collectionView.delegate = self
        dataSource.reuseIdentifierForItem = { item in
            if case .Featured = item {
                return "FeaturedComicCollectionViewCellReuseIdentifier"
            }
            return "ComicCollectionViewCellReuseIdentifier"
        }
        collectionView.dataSource = dataSource
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDelegateFlowLayout
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)

    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {

            let comic = dataSource.itemAtIndexPath(indexPath)
            let size: CGSize?
            switch comic {
            case .Featured(let cover):
                size = cover?.size
            case .Normal(let cover):
                size = cover?.size
            }
            if var size = size {
                size.width += 10
                size.height += 10
                return size
            }
            return CGSize(width: 100, height: 100)
    }

    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
}