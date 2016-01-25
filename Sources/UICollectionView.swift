//
//  UICollectionView.swift
//  BothamUI
//
//  Created by Davide Mendolia on 19/01/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

public extension UICollectionView {

    public func registerNib(nibName name: String, forCellReuseIdentifier identifier: String) {
        registerNib(
            UINib(nibName: name, bundle: NSBundle.mainBundle()),
            forCellWithReuseIdentifier: identifier
        )
    }

    public func registerNib(nibName name: String, forHeaderWithReuseIdentifier identifier: String) {
        registerNib(
            UINib(nibName: name, bundle: NSBundle.mainBundle()),
            forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
            withReuseIdentifier: identifier
        )
    }

    public func registerNib(nibName name: String, forFooterWithReuseIdentifier identifier: String) {
        registerNib(
            UINib(nibName: name, bundle: NSBundle.mainBundle()),
            forSupplementaryViewOfKind: UICollectionElementKindSectionFooter,
            withReuseIdentifier: identifier
        )
    }
}