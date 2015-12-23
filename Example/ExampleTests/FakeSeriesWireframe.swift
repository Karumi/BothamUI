//
//  FakeCharactersWireframe.swift
//  Example
//
//  Created by Davide Mendolia on 04/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
@testable import Example

class FakeSeriesWireframe: SeriesWireframe {
    var seriesDetailViewControllerWasPresented = false
    var seriesName = ""

    override func presentSeriesDetailViewController(seriesName: String) {
        self.seriesName = seriesName
        seriesDetailViewControllerWasPresented = true
    }
}
