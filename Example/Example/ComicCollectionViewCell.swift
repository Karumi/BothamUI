//
//  ComicCollectionViewCell.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 22/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI
import SDWebImage

class ComicCollectionViewCell: UICollectionViewCell, BothamViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var comicNameLabel: UILabel!

    func configureForItem(item: Comic) {
        coverImageView.sd_setImageWithURL(item.coverURL)
        comicNameLabel.text = item.name
        comicNameLabel.accessibilityLabel = item.name
    }

}