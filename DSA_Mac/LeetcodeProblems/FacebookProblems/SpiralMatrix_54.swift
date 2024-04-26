//
//  facebookProblems.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf on 26/4/24.
//

import Foundation

//Given an m x n matrix, return all elements of the matrix in spiral order.
public class SpiralMatrix_54{
    
    public init(){
        
    }
    
    // Spiral traversing
    public func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        var resultArray = [Int]()
        
        // traverse the matrix
        let row = matrix.count
        let col = matrix[0].count
        var startingRow = 0
        var startingCol = 0
        var endingRow = row - 1
        var endingCol = col - 1
        
        let totalElements = row * col
        var elementCount = 0
        
        while elementCount < totalElements {
            
            // traversing right from start column to end column in starting row
            for i in stride(from: startingCol, through: endingCol, by: 1){
                
                if elementCount >= totalElements{
                    break
                }
                resultArray.append(matrix[startingRow][i])
                elementCount += 1
            }
            //all element of starting row has been traversed so changing starting row
            startingRow += 1
            
            // traversing down from startingRow to endingRow in endingCol
            
            for i in stride(from: startingRow, through: endingRow, by: 1){
                if elementCount >= totalElements {
                    break
                }
                resultArray.append(matrix[i][endingCol])
                elementCount += 1
            }
            // traversal of all elements in ending column is complete, so changing the ending column
            endingCol -= 1
            
            //traversing left from endingCol to startingCol in endingRow
            for i in stride(from: endingCol, through: startingCol, by: -1){
                if elementCount >= totalElements {
                    break
                }
                resultArray.append(matrix[endingRow][i])
                elementCount += 1
            }
            //all elements of the ending row has been traversed
            endingRow -= 1
            
            //traversing up from endingRow to startingRow in startingCol
            for i in stride(from: endingRow, through: startingRow, by: 1){
                if elementCount >= totalElements {
                    break
                }
                resultArray.append(matrix[i][startingCol])
                elementCount += 1
            }
            //traversing of all elements in starting column is done so changing the starting column
            startingCol += 1
            
        }
        
        return resultArray
        
    }
}

