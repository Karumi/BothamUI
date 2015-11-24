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

class ComicsViewController: BothamViewController<ComicsPresenter>, BothamCollectionViewController, ComicsUI, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!
    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!

    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = dataSource
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDelegateFlowLayout
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)

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

    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
}