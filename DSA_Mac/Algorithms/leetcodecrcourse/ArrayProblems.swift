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
    
    //MARK: Two Pointers problems
    
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
    
    
    //Leetcode problem: 392
    //Given two strings s and t, return true if s is a subsequence of t, or false otherwise.A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
    
    public func isSubSquence(str s:String, pattern t:String) -> Bool {
        
        let strArray = Array(s)
        let patternArray = Array(t)
        
        var i=0, j = 0
        while i < strArray.count && j < patternArray.count {
            if(patternArray[j] == strArray[i]){
                j+=1; i+=1
            }else{
                i+=1
            }
        }
        let isTrue = patternArray.count == j
        return isTrue
    }
    
  
    //Write a function that reverses a string. The input string is given as an array of characters s.
    
    func reverseString(string str:String) -> String {
        
        var strArray = Array(str)
        var left = 0
        var right = str.count-1
        
        while left < right {
            let temp = strArray[left]
            strArray[left] = strArray[right]
            strArray[right] = temp
            
            left += 1
            right -= 1
        }
        
        
        return String(strArray)
        
    }
    
    
    //Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
    /*
    Input: nums = [-4,-1,0,3,10]
    Output: [0,1,9,16,100]
    Explanation: After squaring, the array becomes [16,1,0,9,100].
    After sorting, it becomes [0,1,9,16,100].
     */
        
        func sortedSquares(_ nums: [Int]) -> [Int] {
            var result = [Int]()
            var left = 0
            var right = nums.count - 1
            
            while left <= right {
                let squareLeft = nums[left] * nums[left]
                let squareRight = nums[right] * nums[right]
                
                if squareLeft > squareRight {
                    result.append(squareLeft)
                    left += 1
                } else {
                    result.append(squareRight)
                    right -= 1
                }
            }
            
            return result.reversed()
        }
    
    
    //MARK: Sliding Window Problems
    
    // Example 1: Given an array of positive integers nums and an integer k, find the length of the longest subarray whose sum is less than or equal to k.
    
    public func findLength(passedArray nums:[Int], sumValue k:Int ) -> Int {
        
        var left = 0
        var curr = 0
        var ans = 0
        
        for right in 0..<nums.count {
            curr = curr + nums[right]
          
            if(curr > k){
                curr = curr - nums[left]
                left += 1
            }

            ans = max(ans, right-left+1)
        }
        
        
        return ans
    }
    
    
    //Example 2: You are given a binary substring s (a string containing only "0" and "1"). An operation involves flipping a "0" into a "1". What is the length of the longest substring containing only "1" after performing at most one operation? For example, given s = "1101100111", the answer is 5. If you perform the operation at index 2, the string becomes 1111100111.
    
    //Solution needed
    
    
    

        
}
