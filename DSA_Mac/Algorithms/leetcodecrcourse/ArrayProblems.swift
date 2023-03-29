//
//  ArrayProblems.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf Islam on 15/3/23.
//

import Foundation


public class ArrayProblems{
    
    public init(){
        
    }
    
    //Example 2: Given a sorted array of unique integers and a target integer, return true if there exists a pair of numbers that sum to target, false otherwise. This problem is similar to Two Sum. For example, given nums = [1, 2, 4, 6, 8, 9, 14, 15] and target = 13, return true because 4 + 9 = 13.
    func checkForTarget(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0
        var right = nums.count - 1

        while left < right {
            let curr = nums[left] + nums[right]
            if curr == target {
                return true
            }

            if curr > target {
                right -= 1
            } else {
                left += 1
            }
        }

        return false
    }
    
    //Check if string is palindrom
    public func checkIfPalindrome (check s:String) -> Bool{
        
        let str = Array(s)
        var left = 0
        var right = str.count-1 
        
        var isPalindrom = true
        
        while(left < right){
            if(str[left] != str[right]){
                isPalindrom = false
            }
            left+=1
            right-=1
        }
        
        return isPalindrom
        
    }

    
}
