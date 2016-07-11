//
//  BothamViewSectionsDataSource.swift
//  BothamUI
//
//  Created by Davide Mendolia on 11/07/16.
//  Copyright © 2016 GoKarumi S.L. All rights reserved.
//

import Foundation

public protocol BothamViewSectionsDataSource {
    associatedtype SectionType: BothamViewDataSource

    var sections: [SectionType] { get set }
}

public extension BothamViewSectionsDataSource {
    public func sectionAtIndexPath(indexPath: NSIndexPath) -> SectionType {
        return sections[indexPath.section]
    }

    public func itemAtIndexPath(indexPath: NSIndexPath) -> SectionType.ItemType {
        return sections[indexPath.section].items[indexPath.item]
    }
}
