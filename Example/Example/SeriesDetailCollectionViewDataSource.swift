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

    func collectionView(_ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            if kind == UICollectionElementKindSectionHeader {
                let headerView =
                collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                    withReuseIdentifier: "SeriesDetailCollectionHeaderViewReusableIdentifier",
                    for: indexPath as IndexPath)
                    as! SeriesDetailCollectionHeaderView
                if let header = self.seriesHeader {
                    headerView.configure(forItem: header)
                }
                return headerView

            }
            assert(false, "Unexpected element kind")
    }

}
