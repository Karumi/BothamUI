//
//  SeriesDetailCollectionViewDataSource.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 23/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesDetailCollectionViewDataSource: BothamCollectionViewDataSource<Comic, ComicCollectionViewCell> {

    var seriesHeader: Series?

    func collectionView(collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            if kind == UICollectionElementKindSectionHeader {
                let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                    withReuseIdentifier: "SeriesDetailCollectionHeaderViewReusableIdentifier",
                    forIndexPath: indexPath)
                    as! SeriesDetailCollectionHeaderView
                if let header = self.seriesHeader {
                    headerView.configureForItem(header)
                }
                return headerView

            }
            assert(false, "Unexpected element kind")
    }

}