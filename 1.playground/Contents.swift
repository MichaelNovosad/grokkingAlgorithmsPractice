import UIKit

// Binary search

var arrayOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

/// MARK: Returns index of the array
func binarySearch <T: Comparable>(_ list: [T], item: T) -> Int? {
    var low = 0
    var high = (list.count - 1)
    
    while low <= high {
        let middle = (low + high) / 2
        let guessedValue = list[middle]
        if guessedValue == item {
            return middle
        } else if guessedValue > item {
            high = middle - 1
        } else {
            low = middle + 1
        }
    }
    return nil
}

print(binarySearch(arrayOfInt, item: 5) ?? "Not found")
print(binarySearch(arrayOfInt, item: -1) ?? "Not found")

log2(256.0)

log2(1000000000.0)


// Knowing last name, to find phone in phone book will take O(n) (no more operations than names in phone book) for linear search and O(log n) for binary search

// Knowing phone number and it is not sorted using phone numbers, only surnames, it will take O(n) operations

// To read all phone numbers from phone book it will take O(n) operations

// For sorted array it will take O(n log n)
