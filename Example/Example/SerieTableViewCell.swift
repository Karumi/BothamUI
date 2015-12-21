//
//  ComicCollectionViewCell.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SerieTableViewCell: UITableViewCell, BothamViewCell {

    @IBOutlet weak var serieNameLabel: UILabel!

    func configureForItem(item: Serie) {
        serieNameLabel.text = item.name
    }
}