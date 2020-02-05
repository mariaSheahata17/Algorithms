
func mergeSort(array : [Int]){
    if array.count == 0 {return}
    var ar1 = array[..<(array.count/2)]
    var ar2 = array[(array.count/2)...]
    mergeSort(array: Array(ar1))
    mergeSort(array: Array(ar2))
    merge(a1 : Array(ar1) , a2: Array(ar2) , a : array)
    
    
}

func merge(a1 : [Int], a2 : [ Int], a : [Int]) -> [Int]{
    var array = a
    var i1 = 0, i2 = 0
    for i in 0..<(array.count / 2) {
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
for _ in 0..<12 {
    
    n = n * 10
    print("Its sorting \(n) numbers")
   // var num_list = [Int]()
    var num_list = [Int] (repeating: 0, count: n)
    for i in 0..<n {
        num_list[i] = n - i - 1
    }
    mergeSort(array : num_list)
    for num in num_list {
        print("\(num)  ")
    }
    
}
