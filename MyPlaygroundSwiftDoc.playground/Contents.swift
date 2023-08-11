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


//let size = 8
//var chessboard = [[Int]]()
//
//for i in 0..<size {
//    var row = [Int]()
//    for j in 0..<size {
//        if (i % 2 == 0 && j % 2 == 0) || (i % 2 != 0 && j % 2 != 0) {
//            row.append(1)
//        } else {
//            row.append(0)
//        }
//    }
//    chessboard.append(row)
//
//}
////
////for i in chessboard {
////    print(i)
////}
//
//func sum(num1: Int, num2: Int) -> Int {
//    return num1 + num2
//}
//
//sum(num1: 4, num2: 5)
//
//
//func subtract(_ num1: Int, _ num2: Int) -> Int {
//    return num1 - num2
//}
//
//subtract(10, 40)
//
//func numbers(of sum: Int...) {
//    print(sum)
//}
//
//numbers(of: 1)
//numbers(of: 1,2,4,5,6,7,8)
//
//var str = "New str"
//
//func newStr(from string: inout String){
//    string += " "
//    string += "I'm new str also"
//}
//
//newStr(from: &str)
//
//print(str)
//
//var countForFunc = 5
//
//func funcForRecursion() {
//    print("recursion")
//    while countForFunc > 0 {
//        countForFunc -= 1
//        funcForRecursion()
//    }
//}
//
//funcForRecursion()
//
//func fact(num: Int) -> Int {
//    if num == 1 {
//        return 1
//    } else {
//
//        return num * fact(num: num - 1)
//
//    }
//}
//
//print(fact(num: 5))
//
//func sum(num num1: Int,num num2: Int) -> Int {
//    num1 + num2
//}
//
//func arithmeticMean(int: Int..., sumForDouble numbers: Double...) -> Double {
//    var total: Double = 0
//    for number in numbers {
//        total += number
//    }
//    return total / Double(numbers.count)
//}
//
//arithmeticMean(int: 2,3,4,5,6, sumForDouble: 12.2, 12.5, 56.4, 64.4)
//
//
//var a = 3
//var b = 6
//
//a = a + b
//b = a - b
//a = a - b
//
//let range = 0...10
//range.contains(a)
//range ~= a
//range ~= 12
//
//let word = "hello"
//word.contains("ll")
//word ~= "w"
//word ~= "ll"
//
//let coordinate = ("x", "y")
//
//switch coordinate {
//case(_, "z"): print("Z is here")
//case(_,  "y"): print("Z and Y is here")
//case( "y", "z"): print("X and Y and Z is here")
//default: break
//}


//let arr = [1,2,3,4,5,6,7,8,9,0]
//
//for i in arr {
//    if i % 2 == 0 {
//        print(i)
//    } else if i % 3 == 0 {
//        print("\(i): hui %3")
////        break
//        print("\(i): %3")
//    }
//
//}

let (x, y) = (1,2)
x
y

//let arr = ["Alex", "Bob", "Jack", "Anna"]
//
//for i in arr[0...] {
//    print(i)
//}
//
//let num = 5
//
//switch num {
//case 5:
//    print("win")
//    fallthrough
//case 10: print("loss")
//case 54: print("loss")
//
//default: break
//}

//let finalSquare = 25
//var board = [Int](repeating: 0, count: finalSquare + 1)


//let puzzleInput = "great minds think alike"
//var puzzleOutput = ""
//let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]
//for character in puzzleInput {
//    if charactersToRemove.contains(character) {
//        print(character)
//        continue
//    } else {
//        puzzleOutput.append(character)
//    }
//}
//
//print(puzzleOutput)

//MARK: - OOP

//инкапсуляция

//struct User {
//    private var name: String
//    private var lastName: String
//
//    init(name: String, lastName: String) {
//        self.name = name
//        self.lastName = lastName
//    }
//
//    public func fullName(){
//        print(name + " " + lastName)
//    }
//}
//
//var bob = User(name: "Bob", lastName: "Gray")
//bob.fullName()
//
////полиморфизм
//
//class Laptop {
//    var screen: String
//    var keyboard: String
//    var touchpad: Bool
//
//    init(screen: String, keyboard: String, touchpad: Bool) {
//        self.screen = screen
//        self.keyboard = keyboard
//        self.touchpad = touchpad
//    }
//
//    func powerOn() {
//        print("On")
//    }
//    func powerOff() {
//        print("Off")
//    }
//}
//
//class MacBook: Laptop {
//    let magicSafe: Bool
//
//    init(magicSafe: Bool) {
//        self.magicSafe = magicSafe
//        super.init(screen: "4k hdr", keyboard: "qwerty", touchpad: true)
//    }
//}
//
//class Surface: Laptop {
//
//}
//
//let air = MacBook(magicSafe: true)
//
//let surface = Surface(screen: "2k", keyboard: "Qwerty", touchpad: true)
//
////наследование
//
//class Human {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int){
//        self.name = name
//        self.age = age
//    }
//
//}
//
//class Bob: Human {
//    var iPhone: Bool = true
//}
//
//class Jack: Human {
//    var pet: Bool = false
//}
//
//let jack = Jack(name: "Jack", age: 33)
//jack.name
//jack.age
//jack.pet
//
//
//
//struct Point {
//   var x = 0.0
//   var y = 0.0
//
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//      x += deltaX
//      y += deltaY
//   }
//}
//
//class Point2 {
//   var x = 0.0
//   var y = 0.0
//
//   func moveBy(x deltaX: Double, y deltaY: Double) {
//      x += deltaX
//      y += deltaY
//   }
//}
//
//class SomeClass {
//    class func someTypeMethod(){
//        print("class for metod static")
//    }
//}
//
//
//SomeClass.someTypeMethod()


//MARK: - Наследование
//
//class Vehicle {
//    var currentSpeed = 0.0
//    var description: String {
//        let str = "движется на скорости \(currentSpeed) миль в час"
//        return str
//    }
//
//    func makeNoise() {
//        print("There is no noise")
//    }
//}
//
//class Bicycle: Vehicle {
//    var basket: Bool = false
//    override var currentSpeed: Double {
//        willSet {
//            print("willset \(newValue)")
//        }
//        didSet {
//            print("didSet \(oldValue)")
//        }
//    }
//
//    override func makeNoise() {
//        print("bicycle ovverride")
//    }
//
//
//}
//
//let vehicle = Vehicle()
//vehicle.currentSpeed
//vehicle.description
//
//let bicycle = Bicycle()
//bicycle.currentSpeed = 10
//bicycle.currentSpeed
//bicycle.description
//bicycle.basket
//
//class Train: Bicycle {
//    override var description: String {
//        print(super.description)
//        let newStr = "speed equal to \(currentSpeed) km/h"
//        return newStr
//    }
//
//    override func makeNoise() {
//        super.makeNoise()
//        print("A train make very loud noise!!!")
//    }
//}
//
//
//let train = Train()
//train.currentSpeed = 80
//print(train.description)
//train.makeNoise()
//

//MARK: - Контроль доступа
//
//fileprivate class PrivateClass {
//    var age: Int = 10
//}
//
//private let privateClass = PrivateClass()
//privateClass.age


//enum CompassPoint {
//    static private var north = "north"
//    case south
//    case east
//    case west
//}
//
////MARK: - Приведение типов
//
//var age: Any = 10
//age = 15.9
//
//age = "16"
//
//class Test {
//    
//}
//
//var any: AnyObject = Test()
//
//var things = [Any]()
//
//class MediaItem {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Movie: MediaItem {
//    var director: String
//    init(name: String, director: String) {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem {
//    var artist: String
//    init(name: String, artist: String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//things.append(0)
//things.append(0.0)
//things.append(42)
//things.append(3.14159)
//things.append("hello")
//things.append((3.0, 5.0))
//things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
//things.append({ (name: String) -> String in "Hello, \(name)" })
//
//let optionalNumber: Int? = 3
//let optStr: String? = "test optional string"
//things.append(optionalNumber)
//things.append(optionalNumber as Any)
//things.append(optStr as Any)

//MARK: - Инициализация Init

class Human {
    var name: String = "[UNKNOWN]"
    var salary: Double
    
    init() {
        self.salary = 500.0
    }
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    
    init(name: String, salaryInRUB: Double) {
        self.name = name
        self.salary = salaryInRUB * 98.4
    }
    
    convenience init(name: String, salaryInARM: Double) {
        self.init(name: name, salary: salaryInARM * 385)
        self.name += "!"
    }
    
}


let jack = Human(name: "Jack", salary: 1000)
jack.name
jack.salary

let bob = Human(name: "Bob", salaryInRUB: 900)
bob.name
bob.salary

let ashot = Human(name: "Ashot", salaryInARM: 500)
ashot.name
ashot.salary

class Programmer: Human {
    var language: String
    
    init(language: String = "Swift") {
        self.language = language
        super.init(name: "UNKNOWN", salary: 100)
        addSalary()
    }
    
    func addSalary() {
        print("You salary was increased to: \(salary * 2)")
    }
    
}

let iOSProgrammer = Programmer()
iOSProgrammer.addSalary()

struct User {
    var name: String = "unknown album"
    var salary: Double
    
    init() {
        self.salary = 500.0
    }
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    
    init(name: String, salaryInRUB: Double) {
        self.name = name
        self.salary = salaryInRUB * 98.4
    }
    
    init(name: String, salaryInARM: Double) {
        self.init(name: name, salary: salaryInARM * 385)
        self.name += "!"
    }
    
}


enum Planets {
    case mars
    case earth
    case jupiter
    case saturn
    
    init?(number: Int) {
        switch number {
        case 1: self = .earth
        case 2: self = .mars
        case 3: self = .saturn
        case 4: self = .jupiter
        default: return nil
        }
    }
}


let planet = Planets(number: 2)
