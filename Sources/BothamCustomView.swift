//
//  BothamCustomView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

open class BothamCustomView: UIView {
    var view: UIView!

    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }

    private func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
#if os(iOS) || os(watchOS) || os(tvOS)
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
#elseif os(OSX)
    view.autoresizingMask = [NSAutoresizingMaskOptions.ViewWidthSizable, NSAutoresizingMaskOptions.ViewHeightSizable]
#endif
        addSubview(view)
    }

    private func loadViewFromNib() -> UIView {
        return Bundle(for: type(of: self)).loadNib(name: String(describing: type(of: self)), owner: self)
    }
}
