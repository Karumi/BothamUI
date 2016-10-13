//
//  ViewController.swift
//  ExampleCocoa
//
//  Created by Davide Mendolia on 12/02/16.
//  Copyright © 2016 Karumi. All rights reserved.
//

import Cocoa
import BothamUICocoa

struct Presenter: BothamPresenter {
    func viewDidLoad() {

    }
}

class ViewController: BothamViewController {

    override func viewDidLoad() {
        self.presenter = Presenter()

        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

