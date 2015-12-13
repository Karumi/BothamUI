//
//  EmptyCaseView.swift
//  BothamUI
//
//  Created by Pedro Vicente Gomez on 13/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class EmptyCaseView : BothamCustomView {

    @IBOutlet weak var emptyCaseLabel: UILabel!

    @IBInspectable public var text: String? = nil {
        didSet {
            emptyCaseLabel.text = text
        }
    }

}