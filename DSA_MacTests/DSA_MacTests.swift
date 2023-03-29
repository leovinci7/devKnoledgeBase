//
//  DSA_MacTests.swift
//  DSA_MacTests
//
//  Created by Medhad Ashraf Islam on 31/1/23.
//

import XCTest
@testable import DSA_Mac

final class DSA_MacTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func test_LinkedList_AppendOperation() {
        
        let valuesForNode = ["1", "3" , "5", "7"]
        var inputNodes = [Node]()
        
        let firstNode = Node(value: "0")
        var myLinkedList = LinkedList(node: firstNode)
        
        inputNodes.append(firstNode)
        
        for (_, element) in valuesForNode.enumerated() {
            let node = Node(value: element)
            inputNodes.append(node)
            myLinkedList.append(newNode: node)
        }
        
        let receivedNodes = myLinkedList.getAllNodes()
        
        myLinkedList.printList()
        //print(receivedNodes)
        XCTAssertEqual(inputNodes, receivedNodes)
        
        
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
