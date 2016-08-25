//
//  Comment+CoreDataProperties.swift
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

extension Comment {

    @NSManaged var body: String?
    @NSManaged var date: NSDate?
    @NSManaged var endIndex: NSNumber?
    @NSManaged var startIndex: NSNumber?
    @NSManaged var work: Version?

}
