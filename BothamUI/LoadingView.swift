//
//  LoadingView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable public class LoadingView: BothamCustomView {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!

    @IBInspectable public var color: UIColor? = nil {
        didSet {
                activityIndicator.color = color
                loadingLabel.textColor = color
        }
    }
}