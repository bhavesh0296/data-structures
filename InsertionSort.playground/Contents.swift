/*:
## Insertion Sort

 ![Insertion Sort](insertionSort.png)
*/

import Foundation

public func insertionSort<T: Comparable>(_ list: inout [T]){
    guard list.count > 1 else { return }
    for i in 1..<list.count {
        let x = list[i]
        var j = i
        while j > 0 && list[j-1] > x {
            list[j] = list[j-1]
            j = j-1
        }
        list[j] = x
    }
}

var list = [34, 56, 78, 12, 34, 86]

print(insertionSort(&list))

print(list)
