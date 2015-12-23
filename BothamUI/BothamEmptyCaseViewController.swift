//
//  BothamEmptyCaseViewController.swift
//  BothamUI
//
//  Created by Pedro Vicente Gomez on 13/12/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import UIKit

public protocol BothamEmptyCaseViewController : BothamEmptyCaseUI {
    var currentEmptyCaseView: UIView { get }
    var view: UIView! { get }
}

public extension BothamEmptyCaseViewController {
    func showEmptyCase() {
        guard currentEmptyCaseView.superview == nil else {
            return
        }
        if let tableView = view as? UITableView {
            tableView.insertSubview(currentEmptyCaseView, atIndex: 0)
        } else if let collectionView = view as? UICollectionView {
            collectionView.insertSubview(currentEmptyCaseView, atIndex: 0)
        } else {
            view.addSubview(currentEmptyCaseView)
        }
        currentEmptyCaseView.hidden = false
        currentEmptyCaseView.center = view.center
    }

    func hideEmptyCase() {
        currentEmptyCaseView.removeFromSuperview()
        currentEmptyCaseView.hidden = true
    }
}
