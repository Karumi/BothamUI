//
//  Presenter.swift
//  BothamUI
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol Presenter {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

public extension Presenter {
    func viewWillAppear() {}
    func viewDidAppear() {}
    func viewWillDisappear() {}
    func viewDidDisappear() {}
}

public class BasePresenter<W: Wireframe, U: UI>: Presenter {
    public let wireframe: W
    public let ui: U

    public init(wireframe: W, ui: U) {
        self.wireframe = wireframe
        self.ui = ui
    }

    public func viewDidLoad() {}
}