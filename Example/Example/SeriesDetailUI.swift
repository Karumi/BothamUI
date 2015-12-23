//
//  SeriesDetailUI.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 22/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

protocol SeriesDetailUI: BothamUI, BothamLoadingUI {

    var title: String? { get set }
    
    func configureHeader(series: Series)
    func showItems(items: [Comic])

}