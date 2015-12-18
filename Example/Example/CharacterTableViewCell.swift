//
//  CharacterTableViewCell.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI
import SDWebImage

class CharacterTableViewCell: UITableViewCell, BothamViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!

    func configureForItem(item: Character) {
        nameLabel.text = item.name
        nameLabel.accessibilityLabel = item.name
        thumbnailImage.sd_setImageWithURL(item.thumbnail)
        applyImageGradient(thumbnailImage)
    }

    private func applyImageGradient(thumbnailImage: UIImageView) {
        guard thumbnailImage.layer.sublayers == nil else {
            return
        }
        let gradient: CAGradientLayer = CAGradientLayer(layer: thumbnailImage.layer)
        gradient.frame = thumbnailImage.bounds
        gradient.colors = [UIColor.gradientStartColor.CGColor, UIColor.gradientEndColor.CGColor]
        gradient.startPoint = CGPointMake(0.0, 0.6)
        gradient.endPoint = CGPointMake(0.0, 1.0)
        thumbnailImage.layer.insertSublayer(gradient, atIndex: 0)
    }

}