//
//  Jotting+CoreDataProperties.swift
//  Jottings
//
//  Created by Morten Kals on 25/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Jotting {

    @NSManaged var history: NSOrderedSet?
    @NSManaged var writer: Author?

}
