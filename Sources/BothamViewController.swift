//
//  ViewController.swift
//  BothamUI
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
#if os(iOS) || os(watchOS) || os(tvOS)
    import UIKit

public class BothamViewController: UIViewController, BothamUI {
    private var _presenter: BothamPresenter? = nil

    public override func viewDidLoad() {
        super.viewDidLoad()
        if self.respondsToSelector(Selector("presenter")) {
            _presenter = self.performSelector(Selector("presenter")).takeUnretainedValue() as? BothamPresenter
        }
        _presenter?.viewDidLoad()
    }

    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        _presenter?.viewWillAppear()
    }

    public override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        _presenter?.viewDidAppear()
    }

    public override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        _presenter?.viewWillDisappear()
    }

    public override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        _presenter?.viewDidDisappear()
    }
}
#elseif os(OSX)
    import AppKit

    public class BothamViewController: NSViewController, BothamUI {
        public var presenter: BothamPresenter! = nil

        public override func viewDidLoad() {
            super.viewDidLoad()
            presenter.viewDidLoad()
        }

        public override func viewWillAppear() {
            super.viewWillAppear()
            presenter.viewWillAppear()
        }

        public override func viewDidAppear() {
            super.viewDidAppear()
            presenter.viewDidAppear()
        }

        public override func viewWillDisappear() {
            super.viewWillDisappear()
            presenter.viewWillDisappear()
        }

        public override func viewDidDisappear() {
            super.viewDidDisappear()
            presenter.viewDidDisappear()
        }
    }
#endif