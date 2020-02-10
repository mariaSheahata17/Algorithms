import Dispatch

// this version of merge sort divides the array into three parts instead of two

func mergeSort(array : [Int]) -> [Int]{
    if array.count <= 1 {return array}
    let firstThird: Int = array.count / 3
    let secondThird: Int = Int (Double( array.count) * (2/3))

    
    
    // divide the array into 3 parts
    var ar1 = Array(array[0..<firstThird])
    var ar2 = Array(array[firstThird..<secondThird])
    var ar3 = Array(array[secondThird..<array.count])

    
    // merge the first 2 arrays then merge the result with the third array
    var firstPart: [Int] = mergeSort(array: Array(ar1))
    var secondPart: [Int] = mergeSort(array: Array(ar2))
    var thirdPart: [Int] = mergeSort(array: Array(ar3))
    var firstANDsecond =  merge(a1 : firstPart , a2: secondPart , a : array)
    return merge(a1 : firstANDsecond , a2: thirdPart , a : array)
    
}



func merge(a1 : [Int], a2 : [ Int], a : [Int]) -> [Int]{
    var array = a
    var i1 = 0, i2 = 0
    for i in 0..<(array.count) {
        if i1 == a1.count && i2 == a2.count { return array }
        else if i1 == a1.count {
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
for _ in 0..<5 {
    
    n = n * 10
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
