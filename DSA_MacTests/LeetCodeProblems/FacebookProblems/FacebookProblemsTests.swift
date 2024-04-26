//
//  FacebookProblemsTests.swift
//  DSA_MacTests
//
//  Created by Medhad Ashraf on 26/4/24.
//

import XCTest
import DSA_Mac

final class FacebookProblemsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func test_SpiralMatrix_54(){
        let sut = SpiralMatrix_54()
        let matrix = [[1,2,3],[4,5,6],[7,8,9]]
        let result = [1, 2, 3, 6, 9, 8, 7, 4, 5]
        let recievedResult = sut.spiralOrder(matrix)
        XCTAssertEqual(recievedResult, recievedResult)
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
