//
//  Schools+CoreDataProperties.swift
//  Coredatademo
//
//  Created by GLB-312-PC on 05/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//
//

import Foundation
import CoreData


extension Schools {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Schools> {
        return NSFetchRequest<Schools>(entityName: "Schools")
    }

    @NSManaged public var name: String?
    @NSManaged public var lastname: String?

}
