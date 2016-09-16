//
//  LoadingView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

@IBDesignable
open class BothamLoadingView: BothamCustomView {
    @IBOutlet open weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet open weak var loadingLabel: UILabel!

    @IBInspectable open var color: UIColor? = nil {
        didSet {
                activityIndicator.color = color
                loadingLabel.textColor = color
        }
    }
}
