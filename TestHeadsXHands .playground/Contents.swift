import UIKit
import Foundation

class Creature {
    var attack: Int
    var defense: Int
    var health: Int
    var damage: Range<Int>
    
    init(attack: Int, defense: Int, health: Int, damage: Range<Int>) {
        self.attack = attack
        self.defense = defense
        self.health = health
        self.damage = damage
    }
}


