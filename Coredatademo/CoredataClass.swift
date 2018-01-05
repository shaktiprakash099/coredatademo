//
//  CoredataClass.swift
//  Coredatademo
//
//  Created by GLB-312-PC on 05/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//

import Foundation
import UIKit
import CoreData
class Coredatahelper{
    
  static let shareinstance = Coredatahelper()
      let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    func addTask(firstname: String,  lastname: String) {
        
        let user = Users(context:context)
        user.firstname = firstname
        user.lastname = lastname

        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    
    
}
