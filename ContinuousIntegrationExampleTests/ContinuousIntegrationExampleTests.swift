//
//  ContinuousIntegrationExampleTests.swift
//  ContinuousIntegrationExampleTests
//
//  Created by Vladimir Zivanov on 5/9/17.
//  Copyright © 2017 Vladimir Zivanov. All rights reserved.
//

import XCTest
@testable import ContinuousIntegrationExample

class ContinuousIntegrationExampleTests: XCTestCase {
    
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as! ViewController
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInverseString() {
        let p = vc.invertString(text: "String for inverse")
        XCTAssert(p == "esrevni rof gnirtS")
    }
    
    func testLabel() {
        let _ = vc.view
        let p = vc.invertString(text: "String for inverse ")
        vc.updateLabel(text: p)
        
        XCTAssert(vc.messageLabel.text == "Inverse String: esrevni rof gnirtS")
    }
    
    
}
