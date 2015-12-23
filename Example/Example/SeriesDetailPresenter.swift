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
        loadSeriesDetail()
    }

    private func loadSeriesDetail() {
        let series = Series(name: seriesName,
            coverURL: NSURL(string: "https://vignette3.wikia.nocookie.net/steamtradingcards/images/e/e6/Marvel_Heroes_Artwork_Iron_Man.jpg/revision/latest?cb=20130929234052"),
            rating: "T",
            description: "Extremis: It changes everything for Iron Man! The deadly "
            + "new technology from the imagination of Warren Ellis and Adi Granov "
            + "propels Tony Stark into the next gear as he takes on a super hero "
            + "Civil War and perhaps his greatest challenge yet as Director of "
            + "S.H.I.E.L.D.!",
            comics: [
                Comic(name: "Civil War: Iron Man",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/c/90/51ddaa7bb6788/portrait_incredible.jpg")),
                Comic(name: "Iron Man: Execute Program",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/f/a0/4bc5ae737ec9c/portrait_incredible.jpg")),
                Comic(name: "Iron Man: Extremis",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/8/80/4bc5abb727022/portrait_incredible.jpg")),
                Comic(name: "Iron Man #14",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/40/4d2525b096dec/portrait_incredible.jpg")),
                Comic(name: "Iron Man #13",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/e0/4d24fdc986281/portrait_incredible.jpg")),
                Comic(name: "Iron Man #12",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/b/c0/4d2515cda44ae/portrait_incredible.jpg")),
                Comic(name: "Iron Man #11",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/5/03/4d250b7077707/portrait_incredible.jpg")),
                Comic(name: "Iron Man #10",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/3/03/4d25153f18362/portrait_incredible.jpg")),
                Comic(name: "Iron Man #9",
                    coverURL: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/e/f0/4d24dea0ce8e1/portrait_incredible.jpg")),
                Comic(name: "Iron Man #8",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/9/50/4d24e83a5b5d5/portrait_incredible.jpg")),
                Comic(name: "Iron Man #7",
                    coverURL: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/7/20/4f8479d44fd50/portrait_incredible.jpg")),
                Comic(name: "Iron Man #6",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/6/60/4f84752bb13d5/portrait_incredible.jpg")),
                Comic(name: "Iron Man #5",
                    coverURL: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/60/4bb7dec0199b5/portrait_incredible.jpg")),
                Comic(name: "Iron Man #4",
                    coverURL: NSURL(string: "https://x.annihil.us/u/prod/marvel/i/mg/c/70/4f7f0a8fb8c03/portrait_incredible.jpg")),
                Comic(name: "Iron Man #3",
                    coverURL: NSURL(string: "https://i.annihil.us/u/prod/marvel/i/mg/9/60/4d251fee74e41/portrait_incredible.jpg"))
            ])
        ui?.configureHeader(series)
        ui?.showItems(series.comics)
    }
}