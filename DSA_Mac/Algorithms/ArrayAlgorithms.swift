//
//  ArrayAlgorithms.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf Islam on 1/2/23.
//

import Foundation

//is subsequence

public class ArrayAlgorithms{
    
    public init(){
        
    }
    
    //is subsequence
    public func isSubSquence(str:String, pattern:String) -> Bool {
        
       let strArray = Array(str)
       let patternArray = Array(pattern)
        
        var i=0, j = 0
        
        while i < strArray.count && j < patternArray.count {
            if(strArray[i] == patternArray[j]){
               j+=1
               i+=1
            }else{
                i+=1
            }
            
        }
        
        let isTrue = patternArray.count == j
        
        return isTrue 
        

    }
    
    
}
