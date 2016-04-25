//
//  dictionaryViewController.swift
//  sWord
//
//  Created by Paweł Tarszewski on 01.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class dictionaryViewController: UIViewController {

    var PL_ENG = true
    var _dictionary = dictionary()
    
    @IBOutlet weak var buttonLanguage: UIButton!
    
    @IBOutlet weak var FirstWordLabel: UILabel!
    @IBOutlet weak var SecondWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondWordLabel.hidden = true
        self.FirstWordLabel.text = _dictionary.words[0].PL
        self.SecondWordLabel.text = _dictionary.words[0].ENG //half
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapViewWord(sender: UITapGestureRecognizer) {
            SecondWordLabel.hidden = false
    }
    
    @IBAction func buttonLanguageAction(sender: AnyObject) {
        if PL_ENG {
            buttonLanguage.setImage(UIImage(named: "icon3.png"), forState: UIControlState.Normal)
            PL_ENG = false
        } else {
            buttonLanguage.setImage(UIImage(named: "icon1.png"), forState: UIControlState.Normal)
            PL_ENG = true
        }
    }


}

