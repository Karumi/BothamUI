//
//  ViewController.swift
//  Example
//
//  Created by Davide Mendolia on 25/10/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import UIKit
import BothamUI

class HomeViewController<T>: BothamViewController, HomeUI {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var mainMessageLabel: UILabel!

    func showMainMessage(message: String) {
        mainMessageLabel.text = message
    }
}