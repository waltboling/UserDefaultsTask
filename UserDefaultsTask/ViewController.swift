//
//  ViewController.swift
//  UserDefaultsTask
//
//  Created by Jon Boling on 4/26/18.
//  Copyright © 2018 Walt Boling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct DefaultKey {
        static let inputText = "InputText"
    }
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButton(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(inputTextField.text, forKey: DefaultKey.inputText)
       
    }
    
    @IBAction func showButton(_ sender: Any) {
    performSegue(withIdentifier: "toSecondVC", sender: self) // also could make this a struct or private constant
    }
    
    
}

