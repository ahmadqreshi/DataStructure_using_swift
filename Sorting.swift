var arr: [Int] = [5,4,6,3,7,1,8]


func bubbleSort(arr: inout [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count - 1 - i {
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j + 1)
            }
        }
    }
}


func selectionSort(arr: inout [Int]) {
    for i in 0..<arr.count-1 {
        var minIndex = i
        for j in i+1..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            arr.swapAt(minIndex, i)
        }
    }
}



func insertionSort(arr: inout [Int]) {
    for i in 1..<arr.count {
        var key = arr[i]
        var j = i-1
        while(j>=0  && arr[j] > key ) {
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j+1] = key
    }
}


bubbleSort(arr: &arr)
debugPrint(arr)

