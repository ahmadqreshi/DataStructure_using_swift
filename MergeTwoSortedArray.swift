var arr1: [Int] = [5,6,7]
var arr2: [Int] = [1,2,3]


// method 1
func mergeTwoSortedArray(arr1: inout [Int], arr2: inout [Int]) {
    var i = 0
    var j = 0
    var k = arr1.count - 1
    
    while( i <= k && j < arr2.count ) {
        if arr1[i] < arr2[j] {
            i += 1
        } else {
            swap(&arr1[k], &arr2[j])
            k -= 1
            j += 1
        }
    }
    
    arr1 = arr1 + arr2
}

mergeTwoSortedArray(arr1: &arr1, arr2: &arr2)

arr1.sort()

debugPrint(arr1)


//method 2
// using sort to change arr2 value : - Efficient Method
func mergeTwoSortedArrayMethod2(arr1: inout [Int], arr2: inout [Int]) {
    var i = 0
    while(arr1[arr1.count - 1] > arr2[0]) {
        if arr1[i] > arr2[0] {
            swap(&arr1[i], &arr2[0])
            arr2.sort()
        }
        i += 1
    }
    
}

