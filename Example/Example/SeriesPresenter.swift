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
                Serie(name: "Spider-Man (2004)"),
                Serie(name: "Iron Fist: The Living Weapon (2004 - Present)"),
                Serie(name: "Iron Man & the Armor Wars (2009)"),
                Serie(name: "Avengers (2012 - Present)"),
                Serie(name: "Thor: God of Thunder (2012 - Present)"),
                Serie(name: "Iron Man (2012 - Present)"),
                Serie(name: "Deadpool (2012 - Present)"),
                Serie(name: "All-New X-Men (2012 - Present)"),
                Serie(name: "Iron Man (2013)"),
                Serie(name: "Guardians of the Galaxy (2013 - Present)"),
                Serie(name: "Amazing Spider-Man (2014 - Present)"),
                Serie(name: "Daredevil (2014 - Present)"),
                Serie(name: "Inhuman (2014 - Present)"),
                Serie(name: "Jessica Jones (2014 - Present)"),
                Serie(name: "Civil War (2014 - Present)"),
                Serie(name: "Avengers & X_Men: Axis (2014 - Present)"),
                Serie(name: "Death of Wolverine: Axis (2015 - Present)"),
                ])
        }
    }

    func itemWasTapped(item: Serie) {
        wireframe.presentSerieDetailViewController(item.name)
    }
}