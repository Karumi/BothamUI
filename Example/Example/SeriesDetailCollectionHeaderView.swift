//
//  SeriesDetailCollectionViewHeader.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 22/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import BothamUI
import UIKit

class SeriesDetailCollectionHeaderView: UICollectionReusableView, BothamViewCell {

    @IBOutlet weak var seriesCoverImageView: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    func configure(forItem series: Series) {
        seriesCoverImageView.sd_setImage(with: series.coverURL as URL!)
        ratingLabel.text = series.rating
        descriptionLabel.text = series.description
    }
}
