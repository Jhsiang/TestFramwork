//
//  TestFramworkTests.swift
//  TestFramworkTests
//
//  Created by Jim Chuang on 2019/2/25.
//  Copyright © 2019 nhr. All rights reserved.
//

import XCTest
@testable import TestFramwork

class TestFramworkTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(JSPrint().output(),"this is JSPrint")
        let myGues = Guess()
        myGues.setAns("1357")

        XCTAssertEqual(myGues.start(), "1357")

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
