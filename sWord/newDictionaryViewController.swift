//
//  newDictionaryViewController.swift
//  sWord
//
//  Created by Paweł Tarszewski on 24.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class newDictionaryViewController: UIViewController, UITextFieldDelegate {

    
    var newDictionary: dictionary?
    var words = [word]()
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var plTextField: UITextField!
    
    @IBOutlet weak var engTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.plTextField.delegate = self
        self.engTextField.delegate = self
        self.nameTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addWordsAction(sender: UIButton) {
        
        let word1 = word()
        word1.PL = self.plTextField.text
        word1.ENG = self.engTextField.text
        
        words.append(word1)
        
        plTextField.text = ""
        engTextField.text = ""
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if saveButton === sender {
            let name = self.nameTextField.text
            
            // Set the meal to be passed to MealTableViewController after the unwind segue.
            newDictionary = dictionary();
            newDictionary?.words = words
            newDictionary?.name = name
            
        }
    }
    
 
    

}
