//
//  SerieDetailPresenter.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 21/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesDetailPresenter : BothamPresenter {

    private let seriesName: String
    private weak var ui: SeriesDetailUI?

    init(ui: SeriesDetailUI, seriesName: String) {
        self.ui = ui
        self.seriesName = seriesName
    }

    func viewDidLoad() {
        ui?.title = seriesName.uppercaseString
    }
}