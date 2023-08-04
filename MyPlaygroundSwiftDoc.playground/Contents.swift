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


class Human {
    var weight: Double
    var height: Double
    
    var iq: Double {
        get{
            print("test for IQ is completed")
            return Double.random(in: 90...180)

        }
        set {
            print("now your IQ is \(newValue)")
        }
        
    }
    
    init(weight: Double, height: Double) {
        self.weight = weight
        self.height = height
    }
    
    func lose(weight: Double) {
        var result = self.weight - weight
        print(result)
    }
    
    
}

let bob = Human(weight: 80, height: 180)
bob.height
bob.weight
bob.lose(weight: 5.5)
print(bob.iq)
bob.iq = 100
