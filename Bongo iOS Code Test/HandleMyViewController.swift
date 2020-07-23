//
//  HandleMyViewController.swift
//  Bongo iOS Code Test
//
//  Created by Md Zahidul Islam Mazumder on 24/7/20.
//  Copyright © 2020 Md Zahidul Islam Mazumder. All rights reserved.
//

import Foundation

public class MyHandler{
    
    func lastCharacter(givenString:String)-> String{
        return String(givenString.suffix(1))
    }
    
    func getEvery10thChar(givenString:String)-> String{
        //var charIndex = 0
        let  modifiedString = " " + givenString
        
        var result = String()
        for (index, character) in modifiedString.enumerated() {
            if index != 0 && index % 10 == 0 {
                
                result.append(String(character) + "\n")
            }
            //            if index == 0 {
            //                charIndex = 1
            //            }else{
            //                charIndex += 1
            //            }
            //
            //            if charIndex == 10{
            //                result.append(String(character) + "\n")
            //                charIndex = 0
            //            }
            
            
            
            
        }
        print(result)
        return result
        
    }
    
    func countWords(givenString:String)-> String{
        
        
        
        let words =  givenString.split { !$0.isLetter }
        
        print(words)
        
        print(words.count)
        
        
        return "\(words.count) \n \(words)"
    }
    
}
