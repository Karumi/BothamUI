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
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    func configureForItem(series: Series) {
        seriesCoverImageView.sd_setImageWithURL(series.coverURL)
        ratingLabel.text = series.rating
        descriptionLabel.text = series.description
    }
}