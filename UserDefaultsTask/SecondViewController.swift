//
//  SecondViewController.swift
//  UserDefaultsTask
//
//  Created by Jon Boling on 4/26/18.
//  Copyright © 2018 Walt Boling. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var retrievedTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let userDefaults = UserDefaults.standard
        retrievedTextField.text = userDefaults.object(forKey: "InputText") as? String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
