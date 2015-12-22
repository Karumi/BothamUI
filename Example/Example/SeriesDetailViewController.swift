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

    var dataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>!

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureCollectionView()
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
            //1
            switch kind {
                //2
            case UICollectionElementKindSectionHeader:
                //3
                let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                    withReuseIdentifier: "SeriesDetailCollectionHeaderViewReusableIdentifier",
                    forIndexPath: indexPath)
                    as! SeriesDetailCollectionHeaderView
                headerView.configureForItem(Series(name: "asf"))
                return headerView
            default:
                //4
                assert(false, "Unexpected element kind")
            }
    }

    private func configureNavigationBar() {
        navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
        navigationController?.navigationBar.translucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    }

    private func configureCollectionView() {
        dataSource = BothamCollectionViewDataSource<Comic, ComicCollectionViewCell>()
        collectionView.dataSource = self
        collectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: view.frame.width / CGFloat(numberOfColumns),
            height: CGFloat(cellHeight))
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 20
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.headerReferenceSize = CGSize(width: view.frame.width, height: CGFloat(headerHeight))
        let comics: [Comic] = [
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")),
            Comic(name: "IronMan", coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg"))
        ]

        showItems(comics)
    }



}