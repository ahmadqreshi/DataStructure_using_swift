//MARK: - Method 1  
func removeDuplicates(arr: inout [Int]) {
    var j = 0
    let size = arr.count - 1
    for index in 0..<size {
        if arr[size-index] == arr[size - index - 1] {
            arr.remove(at: size - index)
        }
    }

}
//Time Complexity: O(n2)
//Space Complexity: O(1)


//Mark: - Mehod 2 return the new Size after the modification - debugPrint(arr[0..<newSize])
func removeDuplicates(arr: inout [Int]) -> Int {
    var newIndex = 0
    var size = arr.count
    for index in 0..<size-1 {
        if arr[index] != arr[index + 1] {
            arr[newIndex] = arr[index]
            newIndex += 1
        }
    }
    arr[newIndex] = arr[size-1]
    newIndex += 1
    return newIndex
}

//Time Complexity - O(n)
//Space Complexity - O(1)
