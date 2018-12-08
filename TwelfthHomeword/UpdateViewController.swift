//
//  UpdateViewController.swift
//  TwelfthHomeword
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 lishunli. All rights reserved.
//

import UIKit
import CoreData
class UpdateViewController: UIViewController {
    
    @IBOutlet weak var upName: UITextField!
    @IBOutlet weak var upId: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = ( UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func update(_ sender: Any) {
        let fetch:NSFetchRequest = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", upName.text!)
        let persons = try?context.fetch(fetch)
        if let p = persons?.first{
            p.id = upId.text
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
