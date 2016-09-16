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
    
    private var testBundle: Bundle!
    private let storyboardName = "DummyStoryboard"

    override func setUp() {
        testBundle = Bundle(for: type(of: self))
        sut = BothamStoryboard(name: storyboardName, bundle: testBundle)
    }
    
    func testStoryboardInstantiatesInitialViewController() {
        let viewController: DummyViewController = sut.initialViewController()
        
        expect(viewController).to(beAnInstanceOf(DummyViewController.self))
    }
    
    func testStoryboardInstantiatesViewControllerByIdentifier() {
        let identifier = "DummyViewController"
        
        let viewController: DummyViewController = sut.instantiateViewController(identifier)

        expect(viewController).to(beAnInstanceOf(DummyViewController.self))
    }
    
    func testStoryboardInstantiatesViewControllerByClassName() {
        let viewController: DummyViewController = sut.instantiateViewController()
        
        expect(viewController).to(beAnInstanceOf(DummyViewController.self))
    }
}
