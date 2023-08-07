import UIKit


//MARK: - ENUM
//enum Direction: String, CaseIterable {
//    case west = "WW"
//    case south = "South Park"
//    case north
//    case east
//}
//
//var compass = Direction.north
//compass = .south
//compass = .west
//
//switch compass {
//    case .east : print("east")
//    case .west : print("west")
//    case .south : print("south")
//    case .north : print("north")
//}
//
//let arrayOfEnum: [Direction] = Direction.allCases
//
//for i in arrayOfEnum {
////    print(i)
////    print(i.rawValue)
//}
//
//
//enum UserDirection {
//    case west(name: String)
//    case south(damage: Int, health: Double)
//    case north(Int)
//    case east
//}
//
//var user = UserDirection.south(damage: 10, health: 20.4)
//user = .east
//
//switch user {
//    case .east : print("east")
//    case .west : print("west")
//    case .south : print("south")
//    case .north : print("north")
//}
//
//if case .east = user {
//    print("east here")
//}
//
//enum Message {
//    case send
//    case receive
//    case error
//}

//MARK: - Class Struct Enum

//enum SomeType {
//    case north
//    case south
//    case east
//    case west
//}
//
//struct UserStruct {
//    var name: String
//
//    func printName() {
//        print(name)
//    }
//}
//
//class UserClass {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func printName() {
//        print(name)
//    }
//}
//
//let userStruct1 = UserStruct(name: "Bob 1")
//var userStruct2 = userStruct1
//
//userStruct1.printName()
//userStruct2.printName()
//
//userStruct2.name = "Jack 2"
//
//userStruct1.printName()
//userStruct2.printName()
//
//
//let userClass1 = UserClass(name: "Gog 1")
//let userClass2 = userClass1
//
//userClass1.printName()
//userClass2.printName()
//
//userClass2.name = "Anna 2"
//
//userClass1.printName()
//userClass2.printName()


//class Human {
//    static let species: String = "homo sapiens"
//    var weight: Double
//    var height: Double {
//        willSet {
//            weight += 1
//            print("this is WILLSET \(newValue)")
//        }
//        didSet {
//            print("this is DIDSET \(oldValue)")
//        }
//    }
//
//    var iq: Double {
//        get{
//            print("test for IQ is completed")
//            return Double.random(in: 90...180)
//
//        }
//        set {
//            print("now your IQ is \(newValue)")
//        }
//
//    }
//
//    init(weight: Double, height: Double) {
//        self.weight = weight
//        self.height = height
//    }
//
//    func lose(weight: Double) {
//        var result = self.weight - weight
//        print(result)
//    }
//
//
//}
//
//func foo(f: inout Double){
//    print("call func")
//}
//
//let bob = Human(weight: 80, height: 180)
//bob.height
//bob.weight
//bob.lose(weight: 5.5)
//print(bob.iq)
//bob.iq = 100
//bob.height = 176
//
//foo(f: &bob.weight)
//bob.weight
//foo(f: &bob.weight)
//bob.weight
//
//Human.species


//let str = "Hello Boss"
//
//if true {
//    let str = "Goodbye"
//
//    print(str)
//}
//
//print(str)
//
//
//let sumStr: (String, String) -> String = {$0 + $1}
//
//sumStr("hello ", "Bob")


//let testStr: String? = "hello"
//print(testStr)

//MARK: - Collections

//array - index value
//set - value
//dictionary - key value


//var arr = ["bananas", "apples", "peach"]
//print(arr, arr.count)
//arr.insert("strawberry", at: 3)
//print(arr, arr.count)
//let delete = arr.remove(at: 0)
//print(delete)
//print(arr)
//
//var array: Array<Int> = Array()
//array.append(444)
//array.append(444)
//array.append(444)
//var arrya2: [Int] = []
//arr.insert("strawberry", at: 3)
//arr.insert("strawberry", at: 4)
//arr.insert("strawberry", at: 5)
//arr.insert("strawberry", at: 6)
//print(arr.capacity)
//print(array.capacity)
//
//
//let set = Set<Int>()
//let countOfAnimal: Set = [1,3,5,6,7,4,6,7,3,5]
//print(countOfAnimal.sorted())
//
//let dict: [String: String] = [:]
//let dict1 = [String: String]()
//
//var dict2 = [ "name": "Bob", "age": "54", "newId": "1", "id": "2"]
//
//struct User {
//    var name: String
//    var age: Int
//}
//
//let bob: User? = User(name: "Bob", age: 32)

//if let name = bob.name {
//    print(name)
//}
//bob?.name


let size = 8
var chessboard = [[Int]]()

for i in 0..<size {
    var row = [Int]()
    for j in 0..<size {
        if (i % 2 == 0 && j % 2 == 0) || (i % 2 != 0 && j % 2 != 0) {
            row.append(1)
        } else {
            row.append(0)
        }
    }
    chessboard.append(row)
    
}
//
//for i in chessboard {
//    print(i)
//}

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

sum(num1: 4, num2: 5)


func subtract(_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2
}

subtract(10, 40)

func numbers(of sum: Int...) {
    print(sum)
}

numbers(of: 1)
numbers(of: 1,2,4,5,6,7,8)

var str = "New str"

func newStr(from string: inout String){
    string += " "
    string += "I'm new str also"
}

newStr(from: &str)

print(str)

var countForFunc = 5

func funcForRecursion() {
    print("recursion")
    while countForFunc > 0 {
        countForFunc -= 1
        funcForRecursion()
    }
}

funcForRecursion()

func fact(num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        
        return num * fact(num: num - 1)
        
    }
}

print(fact(num: 5))
