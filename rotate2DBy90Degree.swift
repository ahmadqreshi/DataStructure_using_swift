import Foundation

//MARK: - Method 1 time - 0(n2), space - 0(n2)

var arr = [ [1,2,3 ],
            [4,5,6],
            [7,8,9]
            ]

func rotate2dArrayBy90(arr: [[Int]]) -> [[Int]] {
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: arr[0].count), count: arr.count)
    
    
    for i in 0..<arr.count {
        let size = arr[i].count - 1
        for j in 0...size {
            result[j][size-i] = arr[i][j]
        }
    }
    return result
}


//let ans = rotate2dArrayBy90(arr: arr)
//
//
//for item in ans {
//    debugPrint(item)
//}

//MARK: - OUTPUt
/*
 [7, 4, 1]
 [8, 5, 2]
 [9, 6, 3]

 */



//MARK: - method  2  time - 0(n2), space - 0(n)
//step1 - transpose
//step2 - reverse rows
func rotate2dArrayBy90second(arr: inout [[Int]])  {
    for i in 0..<arr.count-1 {
        for j in i+1..<arr[i].count {
            if i != j {
                arr[i][j] = arr[i][j] + arr[j][i]
                arr[j][i] = arr[i][j] - arr[j][i]
                arr[i][j] = arr[i][j] - arr[j][i]
             }
        }
    }
    
    for i in 0..<arr.count {
        reverse(arr: &arr[i])
    }
}

func reverse(arr: inout [Int]) {
    var p1 = 0
    var p2 = arr.count - 1
    
    while(p1 < p2) {
        arr.swapAt(p1, p2)
        p1 += 1
        p2 -= 1
    }
}

rotate2dArrayBy90second(arr: &arr)

for item in arr {
    debugPrint(item)
}
