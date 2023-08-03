import UIKit

enum Direction: String, CaseIterable {
    case west = "WW"
    case south = "South Park"
    case north
    case east
}

var compass = Direction.north
compass = .south
compass = .west

switch compass {
    case .east : print("east")
    case .west : print("west")
    case .south : print("south")
    case .north : print("north")
}

let arrayOfEnum: [Direction] = Direction.allCases

for i in arrayOfEnum {
//    print(i)
//    print(i.rawValue)
}


enum UserDirection {
    case west(name: String)
    case south(damage: Int, health: Double)
    case north(Int)
    case east
}

var user = UserDirection.south(damage: 10, health: 20.4)
user = .east

switch user {
    case .east : print("east")
    case .west : print("west")
    case .south : print("south")
    case .north : print("north")
}

if case .east = user {
    print("east here")
}

enum Message {
    case send
    case receive
    case error
}
