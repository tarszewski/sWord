//
//  wordTests.swift
//  sWord
//
//  Created by Paweł Tarszewski on 23.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//


import XCTest
@testable import sWord

class wordTests: XCTestCase {
    
    func testWord() {
        let word1 = word()
        word1.can()
        XCTAssert(word1.value == 1)
    }
   
}