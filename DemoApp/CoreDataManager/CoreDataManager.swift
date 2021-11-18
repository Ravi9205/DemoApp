//
//  CoreDataManager.swift
//  CoreDataDemo
//
//  Created by Ravi dwivedi on 05/10/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager{
    
    private init(){}
    
    static let  shared = CoreDataManager()
    
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "DemoApp")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    lazy var context = persistentContainer.viewContext
    
    func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    
    
}



