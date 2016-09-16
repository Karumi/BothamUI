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

    func configure(forItem item: Character) {
        nameLabel.text = item.name
        nameLabel.accessibilityLabel = item.name
        thumbnailImage.sd_setImage(with: item.thumbnail as URL!)
        applyImageGradient(thumbnailImage)
    }

    private func applyImageGradient(_ thumbnailImage: UIImageView) {
        guard thumbnailImage.layer.sublayers == nil else {
            return
        }
        let gradient: CAGradientLayer = CAGradientLayer(layer: thumbnailImage.layer)
        gradient.frame = thumbnailImage.bounds
        gradient.colors = [UIColor.gradientStartColor.cgColor, UIColor.gradientEndColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.6)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        thumbnailImage.layer.insertSublayer(gradient, at: 0)
    }

}
