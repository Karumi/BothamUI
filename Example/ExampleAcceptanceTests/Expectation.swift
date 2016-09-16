//
//  Expectation.swift
//  Example
//
//  Created by Davide Mendolia on 04/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import Nimble

extension Expectation {
    /// Tests the actual value using a matcher to match by checking continuously
    /// at each pollInterval until the timeout is reached.
    public func toOneDay<U>(matcher: U, timeout: TimeInterval = 15, pollInterval: TimeInterval = 0.1, description: String? = nil) where U: Matcher, U.ValueType == T {
        self.toEventually(matcher, timeout: timeout, pollInterval: pollInterval, description: description)
    }
}
