//
//  CharactersViewController.swift
//  Example
//
//  Created by Davide Mendolia on 17/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit
import BothamUI

class CharactersNavigationController: UINavigationController {
    override func awakeFromNib() {
        super.awakeFromNib()
        let wireframe = AppDelegate.service.provideMainWireframe()
        let homeViewController = AppDelegate.service.provideHomeViewController(wireframe)
        pushViewController(homeViewController, animated: false)
    }
}

class CharactersViewController: BothamTableViewController<HomePresenter, Character, CharacterTableViewCell> {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        //tableViewCellReuseIdentifier = ""
        super.viewDidLoad()
    }
}

struct Character {
    let name = "Spiderman"
}


class CharacterTableViewCell: UITableViewCell, BothamTableViewCell {
    func configureForItem(item: Character) {
        self.textLabel?.text = item.name
    }
}