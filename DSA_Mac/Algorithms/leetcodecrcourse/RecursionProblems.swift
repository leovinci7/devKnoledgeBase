//
//  RecursionProblems.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf Islam on 28/3/23.
//

import Foundation


public class RecursionProblem{
    
    public init(){
        }
    
    //MARK: Using Recursion
    func fibonacci(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return n
        }
        
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
    
    
    //MARK: Using Loop
    func fibonacciUsingLoop(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return n
        }
        
        var fib = [0, 1]
        
        for i in 2...n {
            fib.append(fib[i-1] + fib[i-2])
        }
        
        return fib[n]
    }
    
}
