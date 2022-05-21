import UIKit

// Recursion

func countDown(from integer: Int) {
    print(integer)
    if integer <= 0 {
        return
    } else {
        countDown(from: integer - 1)
    }
}

countDown(from: 10)

func greet(name: String){
    print("hello, " + name + "!")
    greet2(name: name)
    print("Getting ready to say bye...")
    bye()
}

func greet2(name: String) {
    print("How are you, " + name + "?")
}

func bye() {
    print("Ok bye!")
}

greet(name: "Maggie")


func countFactorial(_ x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * countFactorial(x - 1)
    }
}

var fact = countFactorial(5)
print(fact)
