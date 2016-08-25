//
//  Comment.swift
//  Jottings
//
//  Created by Morten Kals on 25/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//

import Foundation
import CoreData


class Comment: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    //        @NSManaged var body: String?
    //        @NSManaged var date: NSDate?
    //        @NSManaged var endIndex: NSNumber?
    //        @NSManaged var startIndex: NSNumber?
    //        @NSManaged var work: Version?
    
    init(body: String, startIndex: Int, endIndex: Int) {
        self.body = body
        self.startIndex = startIndex
        self.endIndex = endIndex
        self.date = Date.init()
    }
    
    func updateIndices(charInserted: Bool, at index: Int) {
        if charInserted {
            if index < Int(startIndex!) {
                startIndex = (startIndex! as! Decimal) + 1
                endIndex = (endIndex! as! Decimal) + 1
            } else if index < Int(endIndex!) {
                endIndex = (endIndex! as! Decimal) + 1
            }
        } else {
            if index < Int(startIndex!) {
                startIndex = (startIndex! as! Decimal) - 1
                endIndex = (endIndex! as! Decimal) - 1
            } else if index < Int(endIndex!) {
                endIndex = (endIndex! as! Decimal) - 1
            }
        }
    }
    
    func updateContent(body: String) {
        self.body = body
        self.date = Date.init()
    }

    func updateStartInedex(index: Int) {
        self.startIndex = index
        // make sure invarian: end index after start index
    }
    
    func updateEndIndex(index: Int) {
        self.endIndex = index
        // make sure invariant: end index after start index
    }
}
