import Foundation


class QuickFindUF{
    
    var ID :  [Int] = [Int]()
    
    init(arraySize : Int){
        for i in 0..<arraySize { self.ID[i] = i}
    }
    
    func connected(num1 : Int , num2 : Int) -> Bool{
        return ID[num1] == ID[num2]
    }
    
    func union(num1 : Int , num2 : Int){
        var num1ID = ID[num1]
        var num2ID = ID[num2]
        
        for i in 0..<ID.count {
            if ID[i] == num1ID { ID[i] = num2ID}
        }
    }
    
}
