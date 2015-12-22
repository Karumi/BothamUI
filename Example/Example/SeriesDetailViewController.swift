//
//  SeriesDetailViewController.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 21/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

private struct Config {
    static let numberOfColumns = 3
    static let cellHeight = 174
    static let headerHeight = 534
    static let footerHeight = 20
    static let cellMargin = 20
}
class SeriesDetailViewController : ExampleViewController, BothamCollectionViewController, SeriesDetailUI, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {


    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!
    var header: Series?

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        configureNavigationBar()
        configureCollectionView()
        super.viewDidLoad()
    }

    override func viewWillDisappear(animated: Bool) {
        navigationController?.navigationBar.setBackgroundImage(nil, forBarMetrics: UIBarMetrics.Default)
        navigationController?.navigationBar.backgroundColor = UIColor.navigationBarColor
        navigationController?.navigationBar.shadowImage = nil
        navigationController?.navigationBar.translucent = false
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
        collectionView.accessibilityLabel = "ComicsCollectionView"
        collectionView.contentInset = UIEdgeInsetsMake(-topInset, 0, 0, 0)
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: view.frame.width / CGFloat(Config.numberOfColumns),
            height: CGFloat(Config.cellHeight))
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = CGFloat(Config.cellMargin)
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.headerReferenceSize = CGSize(width: view.frame.width, height: CGFloat(Config.headerHeight))
    }

}