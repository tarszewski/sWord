//
//  word.swift
//  sWord
//
//  Created by Paweł Tarszewski on 01.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class word {
    var PL: String?
    var ENG: String?
    var value: Int
    
    init() {
        self.value = 0
    }
    
    func can() {
        self.value++
    }
    
    func cant() {
        self.value--
    }
}