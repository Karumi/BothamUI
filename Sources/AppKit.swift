//
//  AppKit.swift
//  BothamUI
//
//  Created by Davide Mendolia on 12/02/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

#if os(OSX)

// MARK: Typealias
typealias UINib = NSNib
typealias UIStoryboard = NSStoryboard

// MARK: Extension
extension UINib {
    convenience init?(nibName name: String, bundle bundleOrNil: Bundle?) {
        self.init(nibNamed: name, bundle: bundleOrNil)
    }
}

extension NSStoryboard {
    func instantiateInitialViewController() -> Any? {
        return instantiateInitialController()
    }

    func instantiateViewController(withIdentifier identifier: String) -> Any {
        return instantiateController(withIdentifier: identifier)
    }
}

extension Bundle {
    public func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]!) -> [AnyObject]! {
        var topLevelObjects: NSArray?
        self.loadNibNamed(name, owner: owner, topLevelObjects: &topLevelObjects!)
        return topLevelObjects.map { $0 as [AnyObject] }
    }
}

#endif
