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

//let (x, y) = (1,2)
//x
//y

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

//class Human {
//    var name: String = "[UNKNOWN]"
//    var salary: Double
//
//    init() {
//        self.salary = 500.0
//    }
//
//    init(name: String, salary: Double) {
//        self.name = name
//        self.salary = salary
//    }
//
//    init(name: String, salaryInRUB: Double) {
//        self.name = name
//        self.salary = salaryInRUB * 98.4
//    }
//
//    convenience init(name: String, salaryInARM: Double) {
//        self.init(name: name, salary: salaryInARM * 385)
//        self.name += "!"
//    }
//
//}
//
//
//let jack = Human(name: "Jack", salary: 1000)
//jack.name
//jack.salary
//
//let bob = Human(name: "Bob", salaryInRUB: 900)
//bob.name
//bob.salary
//
//let ashot = Human(name: "Ashot", salaryInARM: 500)
//ashot.name
//ashot.salary
//
//class Programmer: Human {
//    var language: String
//
//    init(language: String = "Swift") {
//        self.language = language
//        super.init(name: "UNKNOWN", salary: 100)
//        addSalary()
//    }
//
//    func addSalary() {
//        print("You salary was increased to: \(salary * 2)")
//    }
//
//}
//
//let iOSProgrammer = Programmer()
//iOSProgrammer.addSalary()
//
//struct User {
//    var name: String = "unknown album"
//    var salary: Double
//
//    init() {
//        self.salary = 500.0
//    }
//
//    init(name: String, salary: Double) {
//        self.name = name
//        self.salary = salary
//    }
//
//    init(name: String, salaryInRUB: Double) {
//        self.name = name
//        self.salary = salaryInRUB * 98.4
//    }
//
//    init(name: String, salaryInARM: Double) {
//        self.init(name: name, salary: salaryInARM * 385)
//        self.name += "!"
//    }
//
//}
//
//
//enum Planets {
//    case mars
//    case earth
//    case jupiter
//    case saturn
//
//    init?(number: Int) {
//        switch number {
//        case 1: self = .earth
//        case 2: self = .mars
//        case 3: self = .saturn
//        case 4: self = .jupiter
//        default: return nil
//        }
//    }
//}
//
//
//let planet = Planets(number: 2)


//struct Fahrenheit {
//    var temperature: Double
//
//}
//
//let f = Fahrenheit(temperature: 32)
//
//struct Fahrenheit2 {
//    var temperature: Double
//
//    init() {
//        temperature = 32.0
//    }
//}
//
//let f2 = Fahrenheit2()
//print("The weather is \(f2.temperature)")
//
//struct Celcius {
//    var tempInCelsius: Double
//
//    init(fromFahrenheit fahrenheit: Double) {
//        tempInCelsius = (fahrenheit - 32.0) / 1.8
//    }
//
//    init(fromKelvin kelvin: Double) {
//        tempInCelsius = kelvin - 273.15
//    }
//}
//
//let celciusFromFahrenheit = Celcius(fromFahrenheit: 40)
//celciusFromFahrenheit.tempInCelsius
//
//let celciusFromKevin = Celcius(fromKelvin: 28)
//celciusFromKevin.tempInCelsius
//
//
//class Mall {
//    var mallName: String
//
//    init(mallName: String) {
//        self.mallName = mallName
//    }
//}
//
//class ShoppingListItem: Mall {
//    var name: String?
//    var quantity = 1
//    var purchased = false
//
//}
//var item = ShoppingListItem(mallName: "Cosco")


//MARK: - Extension
//
//extension Double {
//    var km: Double { return self * 1_000.0 }
//    var m: Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1_000.0 }
//    var ft: Double { return self / 3.28084 }
//}
//
//
//let oneInch = 25.4.mm
//let aMarathon = 42.km + 195.m
//let ft = 1.78.ft
//
//
//extension Int {
//    func repeatNum(_ num: () -> Void) {
//        for _ in 0..<self {
//            num()
//        }
//    }
//}
//
//4.repeatNum {
//    print("Hello bob")
//}
//
//extension Int {
//    mutating func timesBySelf() {
//        self = self * self
//    }
//}
//
//var num = 4
//num.timesBySelf()
//
//struct User {
//    lazy var name: String = "Bob"
//
//
////    lazy var bonus: Bool {
////        if name != "" {
////            return true
////        }
////    }
//}
//extension User {
//    var age: Int {
//        return 4
//    }
//
//    var skills: String {
//        "Swift"
//    }
//
//
//}
//
//class Human {
//    class var lastName: String  {
//        return "Black"
//    }
//}

//
//class Human {
//    var name: String
//    var lastName: String
//    var age: Int
//    var fullName: String {
//        get {
//            return name + " " + lastName
//        }
//        set {
//            name = "Bob"
//            lastName = "Black"
//        }
//    }
//
//    init(name: String, lastName: String, age: Int) {
//        self.name = name
//        self.lastName = lastName
//        self.age = age
////        self.fullName = fullName
//    }
//
//    func drive() {
//        print("I'm a driver")
//    }
//
//}
//
//let driver = Human(name: "Jack", lastName: "White", age: 33)
//driver.age
//driver.name
//driver.lastName
//driver.fullName

//let driver2 = Human()

//MARK: - Protocol

//protocol Human {
//
//    var name: String {get set}
//    var lastName: String {get}
//    var age: Int {get set}
//}
//
//protocol Run: Human {
//    func run()
//}
//
//protocol Walk: Human {
//    func walk()
//}
//
//protocol Cry: Human {
//    func cry(_ why: String)
//}
//
//class User  {
//    var id: Int = 0
//    var _name: String = "test"
//}
//
//extension User: Cry, Run, Walk {
//
//    var name: String {
//        get {
//            "Bobbu"
//        }
//        set {
//            _name = newValue + "!!!"
//        }
//    }
//
//    var age: Int {
//        get {
//            34
//        }
//        set {
//
//        }
//    }
//
//    var lastName: String {"Bubbo"}
//
//    func walk() {
//        print("I walk")
//    }
//
//    func run() {
//        print("I run")
//    }
//
//    func cry(_ why: String) {
//        print("Cause of \(why)")
//    }
//
//}
//
////var bob = User(name: "Bob", lastName: "Black", age: 34)
//var bob = User()
//bob.name
//bob.lastName
//bob.age
//bob.run()
//bob.walk()
//bob.cry("you")
//
//bob.name = "Robert"
//bob.name
//bob.age = 12
//bob.age
////bob.lastName = "White"
//bob.lastName
////bob.lastName = "Pip"
//bob.lastName
//bob._name
//
//bob._name = "Dudu"
//print(bob._name)
//

//
//protocol Drive {
//    var speed: Int { get }
//    func drive()
//}
//
//protocol Bicycle: Drive {
//    var nameOfBicycle: String { get }
//}
//
//extension Bicycle {
//    var speed: Int { 59 }
//    func drive() {
//        print("drive ")
//    }
//
//}
//
//class SomeClass {
//
//}
//
//class User: SomeClass, Drive {
//    var speed: Int = 0
//
//    func drive() {
//        print("hello")
//    }
//
//
//}

//extension User: Bicycle {
//    var nameOfBicycle: String {
//
//    }
//}

//var user = User()

//user.drive()
//user.nameOfBicycle
//user.speed


//protocol Togglable {
//    mutating func toggle()
//}
//
//enum OnOffSwitch: Togglable {
//    case on, off
//
//    mutating func toggle() {
//        switch self {
//        case .off: self = .on
//        case .on: self = .off
//        }
//    }
//}
//
//
//var switcher = OnOffSwitch.off
//switcher.toggle()
//switcher.toggle()
//switcher.toggle()
//switcher.toggle()
//
//
//protocol Named {
//    var name: String { get }
//}
//protocol Aged {
//    var age: Int { get }
//}
//struct Person: Named, Aged {
//    var name: String
//    var age: Int
//}
//func wishHappyBirthday(to celebrator: Named & Aged) {
//    print("С Днем Рождения, \(celebrator.name)! Тебе уже \(celebrator.age)!")
//}
//
//let user = Person(name: "Bob", age: 12)
//wishHappyBirthday(to: user)
//
//struct Human: Named {
//    var name: String
//}
//
//
//let user2 = Human(name: "Jack")
//wishHappyBirthday(to: user2 as? Named) ошибка


//MARK: - ARC
//
//
//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print("\(name) инициализируется")
//    }
//    deinit {
//        print("\(name) деинициализируется")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "John Appleseed")
//reference2 = reference1
//reference3 = reference1
//var ref: Person? = Person(name: "Test name")
//reference1 = nil
//reference2 = nil
//reference3 = nil
//ref = nil

//MARK: - Дженерики

//func swapSomeTypes<T>(_ a: inout T, _ b: inout T) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//var num1 = 20
//var num2 = 399
//
//swapSomeTypes(&num1, &num2)
//num1
//num2
//
//protocol Container {
//    associatedtype T
//    mutating func append(_ item: T)
//    var count: Int { get }
//    subscript(i: Int) -> T { get }
//}
//
//struct IntStack: Container {
//    mutating func append(_ item: Int) {
//
//    }
//
//    subscript(i: Int) -> Int {
//        return 0
//    }
//
//    typealias T = Int
//
//    var count: Int
//
//
//}
//
//enum MyOptional<T> {
//    case some(T)
//    case none
//}
//
//let newStr = MyOptional.some("Hello")
//let str = Optional.some("Hello again")

//MARK: - Try Do catch

//enum SpellCastError: Error {
//    case spellNotLearned
//    case notEnoughMana(needMore: Int)
//    case friendlyTarget
//}
//
//extension SpellCastError: CustomStringConvertible {
//    var description: String {
//        switch self {
//        case .spellNotLearned: return "Spell is not yet learned"
//        case .notEnoughMana(let mana): return  "You need \(mana) mana"
//        case .friendlyTarget: return  "You can't cast this spell on friendly target!"
//        }
//    }
//}
//
//SpellCastError.notEnoughMana(needMore: 10).description
//SpellCastError.friendlyTarget.description
//SpellCastError.friendlyTarget
//
//protocol Target {}
//
//struct Enemy: Target {}
//struct Friend: Target {}
//
//class Mage {
//
//    var mana = 0
//    var spells = ["fireball": 100]
//
//    func fillMana() {
//        mana = 1000
//    }
//
//    func castHarmSpell(onEnemy target: Target) throws {
//        if target is Friend {
//            throw SpellCastError.friendlyTarget
//        }
//        print("Cast fireball killed all enemies!")
//    }
//
//    func fireball(onTarget target: Target) throws {
//        if mana < spells["fireball"]! {
//            throw SpellCastError.notEnoughMana(needMore: spells["fireball"]! - mana)
//        }
//
//        if !spells.keys.contains("fireball") {
//            throw SpellCastError.spellNotLearned
//        }
//    }
//}
//
//
//class Test {
//    static var shared = Test()
//    var age: Int = 44
//}
//
//let bob = Test()
//bob.age
//
//let mark = Test()
//mark.age
//
//Test.shared.age
//
//
//struct Test1: Equatable {
//
//}
//
//struct Test2: Equatable {
//
//
//}
//
//
//let test1 = Test1()
//let test2 = Test2()

//func reverse(string: String) -> String {
//    var newString = [String]()
//    var words = string.components(separatedBy: " ")
//
//    for word in words {
//        newString.insert(word, at: 0)
//    }
//
//    return newString.joined(separator: " ")
//}

//func reverse(string: String) -> String {
//    return string.components(separatedBy: " ").reversed().joined(separator: " ")
//}

//func reverse(string: String) -> String {
//    var newString = [String]()
//    var words = string.components(separatedBy: " ")
//
//    for word in words {
//        if !newString.contains(word) {
//            newString.insert(word, at: 0)
//        }
//    }
//
//    return newString.joined(separator: " ")
//
//}
//
//
//let test1 = "Welcome to Sydney"
//let test2 = "Hi Siri how is the weather today"
//let test3 = "Welcome to Welcome Sydney"
//let test4 = "Hi Siri how how is the weather today"
//
//print(reverse(string: test1))
//print(reverse(string: test2))
//print(reverse(string: test3))
//print(reverse(string: test4))


//MARK: - General
//
//var x = 0.0, y = 5.5, q = 12.2, t = 5, i = "hello"
//
//var welcomeMessage: String
//welcomeMessage = "Hi Bob"
//
//var red, blue, green, alpha: Double
//red = 4.4
//blue = 33.3
//green = 0.0
//alpha = 1.0
//
//let `var` = 44
//print(welcomeMessage, terminator: " хуй ")
//UInt8.max
//UInt32.max
//UInt16.max
//Int32.max
//
//
//let http404NotFound = (404, "Not found", 200.0, false)
//print(type(of: http404NotFound))
//let (statusInt, statusString, _, statusBool) = http404NotFound
//statusInt
//statusString
//statusBool
//print(http404NotFound.2)
//let cort = (name: "Bob", age: 49)
//cort.age
//cort.name
//
//struct Name {
//    var `func` = 10
//}
//
//var num: Int?
//
//let assumedString: String! = "An implicitly unwrapped optional string."
//let test = assumedString // optional
//let test2: String = assumedString  //String. Not optional


//var age = 3

//assert(age >= 1, "You are not born yet")
//assert(age >= 0, "Возраст человека не может быть меньше нуля")
//
//if age > 10 {
//    print("Ты можешь покататься на американских горках и чертовом колесе.")
//} else if age > 0 {
//    print("Ты можешь покататься на чертовом колесе.")
//} else {
//    assertionFailure("Возраст человека не может быть отрицательным.")
//}

//let str = """
//pipo is my wifi name.
//Do you now that?
//"""
//
//print(str)
//
//let lineBreaks = """
//
//   This string starts with a line break.
//      It also ends with a line break.
//
//   """
//
//print(lineBreaks)
//
//let linesWithIndentation = """
//    Эта строка начинается без пробелов в начале.
//        Эта строка имеет 4 пробела.
//    Эта строка так же начинается без пробелов.
//    """
//
//print(linesWithIndentation)
//let blackHeart = "\u{2668}"
//print(blackHeart)

//print(#"Line 1\nLine 2"#)
//print("Line 1\nLine 2")
//print(###"Line1\###nLine2"###)
//
//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#
//
//print(threeMoreDoubleQuotationMarks)
//
//let test = ""
//let test1 = String()
//test.isEmpty
//test1.isEmpty

var welcome = "Welcome"
welcome.append("!")
print(welcome)

print("\u{d7}")

print(welcome[welcome.startIndex])
print(welcome[welcome.index(before: welcome.endIndex)])
