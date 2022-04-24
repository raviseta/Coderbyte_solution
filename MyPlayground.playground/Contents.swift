import Foundation
import UIKit

func MathChallenge(_ str: String) -> String {
        
    let strMain = str;
    var strLength = 0
    var division = 0
    var arrString = [String]()
    
    if strMain.count == 1 {
        return "-1"
    }else{
        strLength = strMain.count
        
        
        //Find the division
        
        if strLength % 2 == 0 {
            division = 2;
        }else if strLength % 3 == 0 {
            division = 3
        }else{
            return "-1"
        }
        
        var startIndex = 0
        let iteration = (strLength / division)

        var endIndex = iteration
        
        
        for i in 0..<division{
                        
            let start = strMain.index(strMain.startIndex,offsetBy: startIndex)
            let end = strMain.index(strMain.startIndex, offsetBy: endIndex)
            
            let range = start..<end
            let subString = String(strMain[range])
            
            arrString.insert(subString, at: i)
            
            startIndex = startIndex + iteration
            endIndex = startIndex + iteration
           
            
            
            
        }
        
        if division == 2 {
            if arrString[0] == arrString[1]{
                return arrString[0]
            }
        }else if division == 3{
            if ((arrString[0] == arrString[1]) && (arrString[1] == arrString[2])){
                return arrString[0]
            }
        }
        
    }
    
    return str
    
}

// keep this function call here
print(MathChallenge("abcababcababcab"))
