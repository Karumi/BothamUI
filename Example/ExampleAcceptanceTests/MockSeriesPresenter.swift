//
//  MockComicsPresenter.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 13/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
@testable import Example


class MockSeriesPresenter: SeriesPresenter {

    var series: [Series] = [Series]()

    override func loadSeries() -> [Series] {
        return self.series
    }

}
