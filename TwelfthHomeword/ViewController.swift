//
//  ViewController.swift
//  TwelfthHomeword
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 lishunli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saveName: UITextField!
    @IBOutlet weak var saveId: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func saveInformation(_ sender: Any) {
        let person = Person(context:context)
        person.name = saveName.text
        person.id = saveId.text
        dismiss(animated: true, completion: nil)
    }
    

}

