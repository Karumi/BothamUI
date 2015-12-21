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

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        selectCell()
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        deselectCell()
    }

    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        deselectCell()
    }

    private func selectCell() {
        serieNameLabel.textColor = UIColor.tabBarTintColor
        contentView.backgroundColor = UIColor.cellBackgroundSelectedColor
    }

    private func deselectCell() {
        serieNameLabel.textColor = UIColor.cellTextColor
        contentView.backgroundColor = UIColor.cellBackgroundColor
    }

}