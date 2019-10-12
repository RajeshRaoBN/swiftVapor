//
//  Friend+CoreDataProperties.swift
//  PetPal
//
//  Created by Rajesh Narayana Rao on 27/9/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//
//

import Foundation
import CoreData


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var name: String?

}
