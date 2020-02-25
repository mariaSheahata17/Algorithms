import Foundation


class QuickFindUF{
    
    var ID :  [Int] = [Int]()
    
    public init(arraySize : Int){
        for i in 0...arraySize { self.ID.append(i)}
    }
    
    public func connected(num1 : Int , num2 : Int) -> Bool{
        return ID[num1] == ID[num2]
    }
    
    public func union(num1 : Int , num2 : Int){
        print("Union \(num1) , \(num2)")
        var num1ID = ID[num1]
        var num2ID = ID[num2]
        
        for i in 0..<ID.count {
            if ID[i] == num1ID { ID[i] = num2ID}
        }
    }
    
}
