import UIKit

var arrayOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40].sorted(by: >)

// Selection sort

func findSmallestIndex <T: Comparable> (_ array: [T]) -> Int {
    var smallestValue = array[0]
    var indexOfTheSmallestValue = 0
    for index in 0..<array.count {
        if array[index] < smallestValue {
            smallestValue = array[index]
            indexOfTheSmallestValue = index
        }
    }
    return indexOfTheSmallestValue
}

func sortArrayFromSmallestToHighest <T: Comparable> (array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    var newArray: [T] = []
    var mutableArray = array

    for _ in 0..<mutableArray.count {
        let smallest = findSmallestIndex(mutableArray)
        newArray.append(mutableArray.remove(at: smallest))
    }
    return newArray
}

print(sortArrayFromSmallestToHighest(array: arrayOfInt))

