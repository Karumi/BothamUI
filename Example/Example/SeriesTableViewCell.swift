//
//  ComicCollectionViewCell.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesTableViewCell: UITableViewCell, BothamViewCell {

    @IBOutlet weak var seriesNameLabel: UILabel!

    func configure(forItem item: Series) {
        seriesNameLabel.text = item.name
        seriesNameLabel.accessibilityLabel = item.name
        accessoryType = .disclosureIndicator
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            seriesNameLabel.textColor = UIColor.cellTextHighlightedColor
            backgroundColor = UIColor.cellBackgroundHighlightedColor
        } else {
            seriesNameLabel.textColor = UIColor.cellTextColor
            backgroundColor = UIColor.cellBackgroundColor
        }
    }

}
