//
//  ArrayProblemsTests.swift
//  DSA_MacTests
//
//  Created by Medhad Ashraf Islam on 15/3/23.
//

import XCTest
import DSA_Mac

final class ArrayProblemsTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_isPalindrom(){
        
        let sut = ArrayProblems()
        
        let testInput = ["lloll", "gghh", "abcba", "caac"]
        let testExpectedResult = [true, false, true, true]
        var testReceivedResult = [Bool]()
        
        for (_, str) in testInput.enumerated(){
            testReceivedResult.append(sut.checkIfPalindrome(check: str))
        }
        print(testReceivedResult)
        XCTAssertEqual(testReceivedResult, testExpectedResult)
        
        
    }
    
    func test_isSubSquence(){
        
       let sut = ArrayProblems()
        
        let patternArray = ["llo", "world", "dd"]
        let patternCompareResult = [true, true, false]
        var patternReceivedResult = [Bool]()
    
        for (_, pattern) in patternArray.enumerated(){
            patternReceivedResult.append(sut.isSubSquence(str: "helloworld", pattern: pattern))
        }
       print(patternReceivedResult)
        XCTAssertEqual(patternCompareResult, patternReceivedResult)
        
        
    }
    
}

   
