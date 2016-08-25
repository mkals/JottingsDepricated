//
//  Version+CoreDataProperties.swift
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

extension Version {

    @NSManaged var body: String?
    @NSManaged var created: String?
    @NSManaged var edited: NSDate?
    @NSManaged var title: NSDate?
    @NSManaged var annotation: NSSet?
    @NSManaged var work: Jotting?

}
