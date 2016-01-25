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
class SeriesDetailViewController : ExampleViewController, BothamCollectionViewController, SeriesDetailUI {

    var dataSource: SeriesDetailCollectionViewDataSource!

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
        super.viewWillDisappear(animated)
    }


    func configureHeader(series: Series) {
        dataSource.seriesHeader = series
    }

    private func configureNavigationBar() {
        navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
        navigationController?.navigationBar.translucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    }

    private func configureCollectionView() {
        collectionView.registerNib(nibName: "ComicCollectionViewCell", forCellReuseIdentifier: ComicCollectionViewCell.reuseIdentifier)

        dataSource = SeriesDetailCollectionViewDataSource()
        let navBarHeight = navigationController?.navigationBar.frame.height ?? 0
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        let topInset = navBarHeight + statusBarHeight
        collectionView.accessibilityLabel = "ComicsCollectionView"
        collectionView.contentInset = UIEdgeInsetsMake(-topInset, 0, 0, 0)
        collectionView.dataSource = dataSource
        let layout = UICollectionViewFlowLayout()
        layout.headerReferenceSize = CGSize(width: view.frame.width, height: CGFloat(Config.headerHeight))
        layout.itemSize = CGSize(
            width: view.frame.width / CGFloat(Config.numberOfColumns),
            height: CGFloat(Config.cellHeight))
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = CGFloat(Config.cellMargin)
        collectionView.setCollectionViewLayout(layout, animated: true)
    }

}