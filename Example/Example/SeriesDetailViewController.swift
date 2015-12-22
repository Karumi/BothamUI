//
//  SeriesDetailViewController.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 21/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesDetailViewController : ExampleViewController, BothamCollectionViewController, SeriesDetailUI, UICollectionViewDelegateFlowLayout {

    let numberOfColumns = 3
    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureCollectionView()
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenRect = UIScreen.mainScreen().bounds
        let screenWidth = screenRect.size.width
        let cellWidth = screenWidth / CGFloat(numberOfColumns)
        let size = CGSizeMake(cellWidth, cellWidth);
        return size
    }

    private func configureNavigationBar() {
        navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
        navigationController?.navigationBar.translucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    }

    private func configureCollectionView() {
        dataSource = BothamCollectionViewDataSource()
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        let comics: [Comic] = [
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg"))
        ]

        showItems(comics)
    }



}