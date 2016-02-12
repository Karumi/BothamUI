//
//  BothamCustomView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public class BothamCustomView: UIView {
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
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
#elseif os(OSX)
    view.autoresizingMask = [NSAutoresizingMaskOptions.ViewWidthSizable, NSAutoresizingMaskOptions.ViewHeightSizable]
#endif
        addSubview(view)
    }

    private func loadViewFromNib() -> UIView {
        return NSBundle(forClass: self.dynamicType).loadNib(name: String(self.dynamicType), owner: self)
    }
}