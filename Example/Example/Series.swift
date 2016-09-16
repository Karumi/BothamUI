//
//  Series.swift
//  Example
//
//  Created by Davide Mendolia on 19/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import UIKit

class Series {

    let name: String
    let coverURL: URL?
    let rating: String
    let description: String
    let comics: [Comic]

    init(name: String, coverURL: URL? = nil, rating: String = "", description: String = "", comics: [Comic] = [Comic]()) {
        self.name = name
        self.coverURL = coverURL
        self.rating = rating
        self.description = description
        self.comics = comics
    }
}
