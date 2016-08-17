//
//  Jotting+CoreDataProperties.swift
//  Jottings
//
//  Created by Morten Kals on 16/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//

import Foundation
import CoreData

extension Jotting {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Jotting> {
        return NSFetchRequest<Jotting>(entityName: "Jotting");
    }

    @NSManaged public var created: String?
    @NSManaged public var edited: NSDate?
    @NSManaged public var title: NSDate?
    @NSManaged public var body: String?
    @NSManaged public var writer: Author?

}
