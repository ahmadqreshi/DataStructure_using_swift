/*


Sort an array of 0s, 1s and 2s | Dutch National Flag problem

*/

func sortColors(arr: inout [Int]) {
    var low = 0
    var mid = 0
    var high = arr.count - 1
    

    while(mid <= high) {
        switch arr[mid] {
        case 0:
            arr.swapAt(mid, low)
            mid += 1
            low += 1
        case 1:
            mid += 1
        case 2:
            arr.swapAt(high, mid)
            high -= 1
        default:
            return
        }
    }
}
