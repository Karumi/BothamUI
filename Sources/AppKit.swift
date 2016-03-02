//
//  AppKit.swift
//  BothamUI
//
//  Created by Davide Mendolia on 12/02/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

// MARK: Constant
// swiftlint:disable variable_name
let UICollectionElementKindSectionHeader = NSCollectionElementKindSectionHeader
let UICollectionElementKindSectionFooter = NSCollectionElementKindSectionFooter
// swiftlint:enable variable_name

// MARK: Typealias
public typealias UIViewController = NSViewController
public typealias UITableView = NSTableView
public typealias UIView = NSView
typealias UITableViewDelegate = NSTableViewDelegate
typealias UITableViewDataSource = NSTableViewDataSource
typealias UICollectionViewDataSource = NSCollectionViewDataSource
public typealias UICollectionView = NSCollectionView
public typealias UICollectionViewCell = NSCollectionViewItem
typealias UINib = NSNib
typealias UIStoryboard = NSStoryboard

// MARK: Extension
extension UINib {
    convenience init?(nibName name: String, bundle bundleOrNil: NSBundle?) {
        self.init(nibNamed: name, bundle: bundleOrNil)
    }
}

extension UICollectionView {
    func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String) {
        self.registerNib(nib, forItemWithIdentifier: identifier)
        NSCollectionElementKindSectionHeader
    }

    func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) {
        registerNib(nib, forSupplementaryViewOfKind: kind, withIdentifier: identifier)
    }
}

extension NSStoryboard {
    func instantiateInitialViewController() -> AnyObject? {
        return instantiateInitialController()
    }

    func instantiateViewControllerWithIdentifier(identifier: String) -> AnyObject {
        return instantiateControllerWithIdentifier(identifier)
    }
}

extension NSBundle {
    public func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]!) -> [AnyObject]! {
        var topLevelObjects:NSArray?
        self.loadNibNamed(name, owner: owner, topLevelObjects: &topLevelObjects)
        return topLevelObjects.map { $0 as [AnyObject] }
    }
}