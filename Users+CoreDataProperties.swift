//
//  Users+CoreDataProperties.swift
//  Coredatademo
//
//  Created by GLB-312-PC on 05/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var firstname: String?
    @NSManaged public var lastname: String?

}
