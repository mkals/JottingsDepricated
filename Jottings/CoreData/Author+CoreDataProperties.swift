//
//  Author+CoreDataProperties.swift
//  Jottings
//
//  Created by Morten Kals on 16/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//

import Foundation
import CoreData

extension Author {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Author> {
        return NSFetchRequest<Author>(entityName: "Author");
    }

    @NSManaged public var name: String?
    @NSManaged public var writing: NSSet?

}

// MARK: Generated accessors for writing
extension Author {

    @objc(addWritingObject:)
    @NSManaged public func addToWriting(_ value: Jotting)

    @objc(removeWritingObject:)
    @NSManaged public func removeFromWriting(_ value: Jotting)

    @objc(addWriting:)
    @NSManaged public func addToWriting(_ values: NSSet)

    @objc(removeWriting:)
    @NSManaged public func removeFromWriting(_ values: NSSet)

}
