import UIKit

// Quick sort
var data = [1, 2, 3, 4]

func sum(_ array: [Int]) -> Int {
    var total = 0
    for x in array {
        total += x
    }
    return total
}
print(sum(data))

func recursiveSum(_ array: [Int]) -> Int {
    if array.count == 0 {
        return 0
    }
    var tempArray = array
    tempArray.remove(at: 0)
    return array[0] + recursiveSum(tempArray)
}

print(recursiveSum(data))

func recursiveCount(_ array: [Int]) -> Int {
    if array.count == 0 {
        return 0
    }
    var mutableArray = array
    mutableArray.remove(at: 0)
    return 1 + recursiveCount(mutableArray)
}

print(recursiveCount(data))

func recursiveMax(_ array: [Int]) -> Int {
    if array.count == 2 {
        return (array[0] > array[1]) ? array[0] : array[1]
    } else if array.count < 2 {
        return array.first ?? 0
    }
    
    var mutableArray = array
    mutableArray.removeFirst()
    let max = recursiveMax(mutableArray)
    return (array[0] > max) ? array[0] : max
}

print(recursiveMax(data))

func quickSort <T: Comparable> (_ array: [T]) -> [T] {
    if array.count < 2 {
        return array
    }
    let pivot = array[0]
    let lessThanPivot = array.filter { $0 < pivot }
    let equalWithPivot = array.filter { $0 == pivot }
    let greaterThanPivot = array.filter { $0 > pivot }
    return quickSort(lessThanPivot) + equalWithPivot + quickSort(greaterThanPivot)
}

print(quickSort(data))

func recursiveMultiplication(_ array: [Int]) -> [Int] {
    if array.count < 2 {
        return array
    }
    var mutableArray = quickSort(array)
    var newArray: [Int] = []
    for i in mutableArray {
        for element in mutableArray {
        newArray.append(i * element)
        }
    }
    return newArray
}

print(recursiveMultiplication(data))
