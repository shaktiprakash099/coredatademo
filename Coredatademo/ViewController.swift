//
//  ViewController.swift
//  Coredatademo
//
//  Created by GLB-312-PC on 05/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  appelegate = UIApplication.shared.delegate as! AppDelegate
//        Coredatahelper.shareinstance.addTask(firstname: "jhjkhjh", lastname: "ghggjgj")
        let context = appelegate.persistentContainer.viewContext
        
//         let newusers = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
//        //storing
//        newusers.setValue("sambit", forKey: "firstname")
//        newusers.setValue("prakash", forKey: "lastname")
//
//        do {
//            try context.save()
//            print("saved")
//
//        } catch  {
//            print("errore")
//        }
        
        
        //retriving
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do {
           let results =  try context.fetch(request)
            if results.count > 0{
                for result in results as! [NSManagedObject] {

                    if let userfirstname = result.value(forKey: "firstname") as? String {
                        print(userfirstname)
                    }
                    if let userfirstname = result.value(forKey: "lastname") as? String {
                        print(userfirstname)
                    }
                }


            }
        } catch  {



                    }
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

