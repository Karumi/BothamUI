//
//  BothamStoryboardTests.swift
//  BothamUI
//
//  Created by David Cordero-Ramirez on 7/28/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import XCTest
import Nimble
@testable import BothamUI

class BothamStoryboardTests: XCTestCase {
    
    private var sut: BothamStoryboard!
    
    private var testBundle: NSBundle!
    private let storyboardName = "DummyStoryboard"

    override func setUp() {
        testBundle = NSBundle(forClass: self.dynamicType)
        sut = BothamStoryboard(name: storyboardName, bundle: testBundle)
    }
    
    func testStoryboardInstantiatesInitialViewController() {
        let viewController: DummyViewController = sut.initialViewController()
        
        expect(viewController).to(beAnInstanceOf(DummyViewController))
    }
    
    func testStoryboardInstantiatesViewControllerByIdentifier() {
        let identifier = "DummyViewController"
        
        let viewController: DummyViewController = sut.instantiateViewController(identifier)

        expect(viewController).to(beAnInstanceOf(DummyViewController))
    }
    
    func testStoryboardInstantiatesViewControllerByClassName() {
        let viewController: DummyViewController = sut.instantiateViewController()
        
        expect(viewController).to(beAnInstanceOf(DummyViewController))
    }
}