//
//  SecondViewController.swift
//  To Do List
//
//  Created by Ankit Malik on 08/06/18.
//  Copyright © 2018 Ankit Malik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var textfield: UITextField!
    
    var data:[String] = []
    
    @IBAction func addButton(_ sender: Any) {
        
       let text = textfield.text ?? ""
        data.append(text)
        UserDefaults.standard.set(data, forKey: "iteam")
        textfield.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        if let data1 = UserDefaults.standard.array(forKey: "iteam") as? [String]{
            data = data1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// where is tableview? 
}

