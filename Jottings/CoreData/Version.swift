//
//  Version.swift
//  Jottings
//
//  Created by Morten Kals on 25/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//

import Foundation
import CoreData


class Version: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    init(title: String, body: String) {
        self.title = title
        self.body = body
        self.edited = Date.init()
    }
    
}
