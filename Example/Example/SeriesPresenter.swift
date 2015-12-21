//
//  ComicsPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesPresenter: BothamPresenter {
    
    private weak var ui: SeriesUI?

    init(ui: SeriesUI) {
        self.ui = ui
    }

    func viewDidLoad() {
        self.ui?.showLoader()
        delay(0.5) {
            self.ui?.hideLoader()

            self.ui?.showItems([
                Serie(name: "Iron Fist (2004)"),
                Serie(name: "Iron Fist: The Living Weapon (2004 - Present)"),
                Serie(name: "Iron Man & the Armor Wars (2009)"),
                Serie(name: "Iron Man (1968 - 1996)"),
                Serie(name: "Iron Man (1996 - 1998)"),
                Serie(name: "Iron Man (1998 - 2004)"),
                Serie(name: "Iron Man (2010 - 2011)"),
                Serie(name: "Iron Man (2011)"),
                Serie(name: "Iron Man (2012 - Present)"),
                Serie(name: "Iron Man (2013)")
                ])
        }
    }
}