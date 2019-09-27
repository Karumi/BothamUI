//
//  NSBundle.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

extension Bundle {
#if os(iOS) || os(watchOS) || os(tvOS)

    public func loadNib<T: UIView>(name: String, owner: AnyObject? = nil) -> T {
#if swift(>=2.3)
    return self.loadNibNamed(name, owner: owner, options: nil)![0] as! T
#else
    return self.loadNibNamed(name, owner: owner, options: nil)[0] as! T
#endif
    }
#elseif os(OSX)
    public func loadNib<T: NSView>(name: String, owner: AnyObject? = nil) -> T {
        return self.loadNibNamed(name: name, owner: owner, options: nil)[0] as! T
    }
#endif
}
