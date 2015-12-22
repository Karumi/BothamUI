//
//  SeriesDetailCollectionViewHeader.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 22/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI
import UIKit

class SeriesDetailCollectionHeaderView: UICollectionReusableView, BothamViewCell {

    @IBOutlet weak var seriesCoverImageView: UIImageView!

    func configureForItem(series: Series) {
        let url = NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/538cd3628a05e.jpg")
        seriesCoverImageView.sd_setImageWithURL(url)
    }
}