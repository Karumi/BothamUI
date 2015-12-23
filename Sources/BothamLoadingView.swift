//
//  LoadingView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
public class BothamLoadingView: BothamCustomView {
    @IBOutlet public weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet public weak var loadingLabel: UILabel!

    @IBInspectable public var color: UIColor? = nil {
        didSet {
                activityIndicator.color = color
                loadingLabel.textColor = color
        }
    }
}