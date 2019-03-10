//
//  NISTValidatorTests.swift
//  NISTValidatorTests
//
//  Created by Hector Castillo on 3/7/19.
//  Copyright © 2019 Hector Castillo. All rights reserved.
//

import XCTest
@testable import NISTValidator

class NISTValidatorTests: XCTestCase {
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        var resultBool: Bool
        
        resultBool = NISTValidator.validate(password: "qwertyuiop", useCustomList: false)
        XCTAssertEqual(false, resultBool, "bad password validated")
        
        resultBool = NISTValidator.validate(password: "InternalPasswordList", useCustomList: false)
        XCTAssertEqual(false, resultBool)
        
        resultBool = NISTValidator.validate(password: "InternalPasswordList", useCustomList: true)
        XCTAssertEqual(true, resultBool)
        
        resultBool = NISTValidator.validate(password: "GoodPasswordThatWillPassBecauseItIsGood", useCustomList: false)
        XCTAssertEqual(true, resultBool, "good password failed validation")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
