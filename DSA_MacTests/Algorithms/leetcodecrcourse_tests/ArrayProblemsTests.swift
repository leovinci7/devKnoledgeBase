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
    
    func test_isSubSequence(){
        
       let sut = ArrayProblems()
        
        let subSeqStrArr = ["llo", "world", "dd"]
        let subSeqCamparisonResult = [true, true, false]
        var subSeqRecievedResult = [Bool]()
    
        for (_, subSeq) in subSeqStrArr.enumerated(){
            subSeqRecievedResult.append(sut.isSubSquence(originalStr: "helloworld", subSequenceStr: subSeq))
        }
       print(subSeqRecievedResult)
        XCTAssertEqual(subSeqCamparisonResult, subSeqRecievedResult)
        
        
    }
    
    
    //MARK: Sliding Window Problem Tests
    
    
    func test_findLength(){
        let sut = ArrayProblems()
        struct testInputModel {
            let nums: [Int]
            let kSum:Int
            let expectedResult:Int
        }
        var testInputs:[testInputModel] = []
        //var expectedResult:[Int] = []
        testInputs.append(testInputModel(nums: [3, 1, 2, 7, 4, 2, 1, 1, 5], kSum: 8, expectedResult: 4))
        testInputs.append(testInputModel(nums: [1, 2, 3, 4, 5], kSum: 10, expectedResult: 4))
        testInputs.append(testInputModel(nums: [1, 1, 1, 1, 1], kSum: 3, expectedResult: 3))
        testInputs.append(testInputModel(nums: [2, 2, 2, 2], kSum: 3, expectedResult: 1))
        testInputs.append(testInputModel(nums: [1, 2, 3, 4, 5], kSum: 5, expectedResult: 2))
        testInputs.append(testInputModel(nums: [1, 2, 3, 4, 5], kSum: 15, expectedResult: 5))
        
        for input in testInputs {
            
            let result = sut.findLength(passedArray: input.nums, sumValue: input.kSum)
            XCTAssertEqual(result, input.expectedResult, "For test array: \(input.nums)")
        }
        
        
        
    }
    
}

   
