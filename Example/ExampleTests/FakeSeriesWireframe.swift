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
    var serieDetailViewControllerWasPresented = false
    var serieName = ""

    override func presentSeriesDetailViewController(serieName: String) {
        self.serieName = serieName
        serieDetailViewControllerWasPresented = true
    }
}
