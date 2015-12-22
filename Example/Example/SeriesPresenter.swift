//
//  ComicsPresenter.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import BothamUI

class SeriesPresenter: BothamPresenter, BothamNavigationPresenter {
    
    private weak var ui: SeriesUI?
    private let wireframe: SeriesWireframe

    init(ui: SeriesUI, wireframe: SeriesWireframe) {
        self.ui = ui
        self.wireframe = wireframe
    }

    func viewDidLoad() {
        self.ui?.showLoader()
        delay(0.5) {
            self.ui?.hideLoader()

            self.ui?.showItems([
                Series(name: "Spider-Man (2004)"),
                Series(name: "Iron Fist: The Living Weapon (2004 - Present)"),
                Series(name: "Iron Man & the Armor Wars (2009)"),
                Series(name: "Avengers (2012 - Present)"),
                Series(name: "Thor: God of Thunder (2012 - Present)"),
                Series(name: "Iron Man (2012 - Present)"),
                Series(name: "Deadpool (2012 - Present)"),
                Series(name: "All-New X-Men (2012 - Present)"),
                Series(name: "Iron Man (2013)"),
                Series(name: "Guardians of the Galaxy (2013 - Present)"),
                Series(name: "Amazing Spider-Man (2014 - Present)"),
                Series(name: "Daredevil (2014 - Present)"),
                Series(name: "Inhuman (2014 - Present)"),
                Series(name: "Jessica Jones (2014 - Present)"),
                Series(name: "Civil War (2014 - Present)"),
                Series(name: "Avengers & X_Men: Axis (2014 - Present)"),
                Series(name: "Death of Wolverine: Axis (2015 - Present)"),
                ])
        }
    }

    func itemWasTapped(item: Series) {
        wireframe.presentSeriesDetailViewController(item.name)
    }
}