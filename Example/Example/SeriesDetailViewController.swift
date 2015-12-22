//
//  SeriesDetailViewController.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 21/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesDetailViewController : ExampleViewController, BothamCollectionViewController, SeriesDetailUI, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {

    let numberOfColumns = 3
    let cellHeight = 174
    let headerHeight = 534
    let footerHeight = 20

    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!
    var header: Series?

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        configureNavigationBar()
        configureCollectionView()
        super.viewDidLoad()
    }

    func collectionView(
        collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            return self.dataSource.collectionView(collectionView, numberOfItemsInSection: section)
    }

    func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            return dataSource.collectionView(collectionView,
                cellForItemAtIndexPath: indexPath)
    }

    func collectionView(collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            if kind == UICollectionElementKindSectionHeader {
                let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                    withReuseIdentifier: "SeriesDetailCollectionHeaderViewReusableIdentifier",
                    forIndexPath: indexPath)
                    as! SeriesDetailCollectionHeaderView
                if let header = self.header {
                    headerView.configureForItem(header)
                }
                return headerView

            }
            assert(false, "Unexpected element kind")
    }

    func configureHeader(series: Series) {
        header = series
    }

    private func configureNavigationBar() {
        navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
        navigationController?.navigationBar.translucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    }

    private func configureCollectionView() {
        dataSource = BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>()
        let navBarHeight = navigationController?.navigationBar.frame.height ?? 0
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        let topInset = navBarHeight + statusBarHeight
        collectionView.contentInset = UIEdgeInsetsMake(-topInset, 0, 0, 0)
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: view.frame.width / CGFloat(numberOfColumns),
            height: CGFloat(cellHeight))
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 20
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.headerReferenceSize = CGSize(width: view.frame.width, height: CGFloat(headerHeight))
    }

}