//
//  XCTest.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF

extension XCTestCase {
    func tester(file : String = __FILE__, line : Int = __LINE__) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = __FILE__, line : Int = __LINE__) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}