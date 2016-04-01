//
//  dictionary.swift
//  sWord
//
//  Created by Paweł Tarszewski on 01.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class dictionary {
    var name: String?
    var words = [word]()
    var number: Int {
        get {
            return words.count
        }
    }
    
}
