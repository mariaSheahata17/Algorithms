import Dispatch
func mergeSort(array : [Int]) -> [Int]{
    if array.count <= 1 {return array}
    let mid: Int = array.count/2
    var ar1 = Array(array[0..<mid])
    var ar2 = Array(array[mid..<array.count])
    var leftHalf: [Int] = mergeSort(array: Array(ar1))
    var righttHalf: [Int] = mergeSort(array: Array(ar2))
    return merge(a1 : leftHalf , a2: righttHalf , a : array)
}



func merge(a1 : [Int], a2 : [ Int], a : [Int]) -> [Int]{
    var array = a
    var i1 = 0, i2 = 0
    for i in 0..<(array.count) {
        if i1 == a1.count {
            array[i] =  a2[i2]
            i2 += 1
        }
        else if i2 == a2.count {
            array[i] = a1[i1]
            i1 += 1
        }
        else if a1[i1] < a2[i2]{
            array[i] = a1[i1]
            i1 += 1
        }
        else{
            array[i] = a2[i2]
            i2 += 1
        }
    }
    return array
    
}

// call mergesort on n numbers
var n = 1
for _ in 0..<10 {
    
    n = n * 20
    print("Its sorting \(n) numbers")
    var num_list : [Int] = []
    for _ in 0..<n {
        num_list.append(Int.random(in: 0..<n))
    }
    let start = DispatchTime.now() // <<<<<<<<<< Start time
    var sortedArray = mergeSort(array : num_list)
    let end = DispatchTime.now()   // <<<<<<<<<<   end time
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds
    let timeInterval = Double(nanoTime) / 1_000_000_000
    /* if you want to print the sorted array
    for num in sortedArray {
        print("\(num)  ", terminator:"")
    }
   */
    
    print(" ")
    print("Time  \(timeInterval) seconds")
    print(" ")
    
    
}
