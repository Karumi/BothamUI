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
        thumbnailImage.sd_setImageWithURL(item.thumbnail)

        let gradient: CAGradientLayer = CAGradientLayer(layer: thumbnailImage.layer)
        gradient.frame = thumbnailImage.bounds
        gradient.colors = [UIColor(red: 44.0 / 255.0, green: 52.0 / 255.0, blue: 60.0 / 255.0, alpha: 0.0).CGColor, UIColor(red: 44.0 / 255.0, green: 52.0 / 255.0, blue: 60.0 / 255.0, alpha: 0.9).CGColor]
        gradient.startPoint = CGPointMake(0.0, 0.6)
        gradient.endPoint = CGPointMake(0.0, 1.0)

        thumbnailImage.layer.insertSublayer(gradient, atIndex: 0)
    }
}