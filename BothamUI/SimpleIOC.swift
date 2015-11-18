//
//  SimpleIoc.swift
//  BothamUI
//
//  Created by Davide Mendolia on 18/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol IOCRegistrable {
    static func registrableTypeName() -> String
}

public class SimpleIOC {
    private var factories: [String : () -> Any] = [ : ]

    public init() {
    }

    public func register<T: IOCRegistrable>(factory: () -> T) {
        factories[T.registrableTypeName()] = factory
    }

    public func getInstance<T: IOCRegistrable>() -> T {
        return factories[T.registrableTypeName()]!() as! T
    }
}