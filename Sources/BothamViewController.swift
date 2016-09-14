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

open class BothamViewController: UIViewController, BothamUI {
    open var presenter: BothamPresenter! = nil

    open override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear()
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.viewDidAppear()
    }

    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter.viewWillDisappear()
    }

    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter.viewDidDisappear()
    }
}
#elseif os(OSX)
    import AppKit

    open class BothamViewController: NSViewController, BothamUI {
        open var presenter: BothamPresenter! = nil

        open override func viewDidLoad() {
            super.viewDidLoad()
            presenter.viewDidLoad()
        }

        open override func viewWillAppear() {
            super.viewWillAppear()
            presenter.viewWillAppear()
        }

        open override func viewDidAppear() {
            super.viewDidAppear()
            presenter.viewDidAppear()
        }

        open override func viewWillDisappear() {
            super.viewWillDisappear()
            presenter.viewWillDisappear()
        }

        open override func viewDidDisappear() {
            super.viewDidDisappear()
            presenter.viewDidDisappear()
        }
    }
#endif
