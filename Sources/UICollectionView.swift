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
        register(
            UINib(nibName: name, bundle: Bundle.main),
            forCellWithReuseIdentifier: identifier
        )
    }

    public func registerNib(nibName name: String, forHeaderWithReuseIdentifier identifier: String) {
        register(
            UINib(nibName: name, bundle: Bundle.main),
            forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
            withReuseIdentifier: identifier
        )
    }

    public func registerNib(nibName name: String, forFooterWithReuseIdentifier identifier: String) {
        register(
            UINib(nibName: name, bundle: Bundle.main),
            forSupplementaryViewOfKind: UICollectionElementKindSectionFooter,
            withReuseIdentifier: identifier
        )
    }
}
