//
//  LinkedList.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf Islam on 6/2/23.
//

import Foundation

class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
    
    var value: String
    var next: Node?

    init(value: String) {
        self.value = value
    }
}

class LinkedList {
    private var head: Node?
    private var tail: Node?
    private var length: Int

    init(value: String) {
        let newNode = Node(value: value)
        head = newNode
        tail = newNode
        length = 1
    }
    
    init(node: Node){
        head = node
        tail = node
        length = 1
        
    }

    func printList() {
        var temp = head
        while temp != nil {
            print(temp!.value)
            temp = temp!.next
        }
    }

    func getHead() {
        if head == nil {
            print("Head: null")
        } else {
            print("Head: \(head!.value)")
        }
    }

    func getTail() {
        if head == nil {
            print("Tail: null")
        } else {
            print("Tail: \(tail!.value)")
        }
    }

    func getLength() {
        print("Length: \(length)")
    }
    
    func getAllNodes()-> [Node]{
        var nodeArray = [Node]()
        var temp = head
        while(temp != nil){
            nodeArray.append(temp ?? Node(value: "error"))
           // nodeArray.append(temp?.value ?? "no value")
            temp = temp?.next
            
        }
        
        return nodeArray
    }
    

    func append(value: String) {
        let newNode = Node(value: value)
        if length == 0 {
            head = newNode
            tail = newNode
        } else {
            tail!.next = newNode
            tail = newNode
        }
        length += 1
    }
    
    func append(newNode: Node) {

        if length == 0 {
            head = newNode
            tail = newNode
        } else {
            tail!.next = newNode
            tail = newNode
        }
        length += 1
    }

    func removeLast() -> Node? {
        if length == 0 {
            return nil
        }
        var temp = head
        var pre = head
        while temp!.next != nil {
            pre = temp
            temp = temp!.next
        }
        tail = pre
        tail!.next = nil
        length -= 1
        if length == 0 {
            head = nil
            tail = nil
        }
        return temp
    }
}

