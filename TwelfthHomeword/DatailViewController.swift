//
//  DatailViewController.swift
//  TwelfthHomeword
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 lishunli. All rights reserved.
//

import UIKit

class DatailViewController: UIViewController {

    var person:Person?
    @IBOutlet weak var showName: UILabel!
    @IBOutlet weak var showId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad() 
        showName.text = person?.name
        showId.text = person?.id
        // Do any additional setup after loading the view.
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
