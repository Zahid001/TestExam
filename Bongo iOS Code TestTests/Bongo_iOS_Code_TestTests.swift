//
//  Bongo_iOS_Code_TestTests.swift
//  Bongo iOS Code TestTests
//
//  Created by Md Zahidul Islam Mazumder on 23/7/20.
//  Copyright © 2020 Md Zahidul Islam Mazumder. All rights reserved.
//

import XCTest
@testable import Bongo_iOS_Code_Test

class Bongo_iOS_Code_TestTests: XCTestCase {

    var handler = MyHandler()
    
    
    
    
    
    func testlastCharacter(){
        let result = handler.lastCharacter(givenString: "Bongo iOS Code Test")
        XCTAssertEqual(result, "t")
    }
    
    func testgetEvery10thChar(){
        let result = handler.getEvery10thChar(givenString: "123456789012345678901234567890123456789009876543210987654321")
        //000011
        
        XCTAssertEqual(result, "0\n0\n0\n0\n1\n1\n")
    }
    
    func testcountWords(){
        let result = handler.countWords(givenString: "Bongo iOS Code Test")
        XCTAssertEqual(result,"4 \n [\"Bongo\", \"iOS\", \"Code\", \"Test\"]")
    }

}
