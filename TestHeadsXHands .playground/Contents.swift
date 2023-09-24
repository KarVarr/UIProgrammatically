import UIKit
import Foundation

class Creature {
    var attack: Int
    var defense: Int
    var health: Int {
        didSet {
            if self.health == 0 {
                print("Creature is dead, health = \(self.health)")
            }
        }
    }
    var damageRange: ClosedRange<Int>
    
    init(attack: Int, defense: Int, health: Int, damageRange: ClosedRange<Int>) {
        self.attack = attack
        self.defense = defense
        self.health = health
        self.damageRange = damageRange
    }
    
    func healing() {
       
    }
    
    func attack(target: Creature) {
        let modifier = max(abs(self.attack - target.defense) + 1, 1)
        var damage = 0
        
        for _ in 1...modifier {
            let luckyStrike = Int.random(in: 1...6)
            if luckyStrike >= 5 {
                damage += Int.random(in: damageRange)
                print("Attack target: \(damage)")
           } else {
               print("Attack missed!")
           }
            
        }
        
        if damage > 0 {
            target.health -= damage
            print("Enemy HP: \(target.health)")
            if target.health <= 0 {
                target.health = 0
                print("Creature has been defeated.")
            }
        } else {
            print("Attack missed!")
        }
        
            
        
    }
    
}



// test
let golem = Creature(attack: 10, defense: 30, health: 20, damageRange: 1...7)
let human = Creature(attack: 5, defense: 20, health: 30, damageRange: 1...3)

human.health
golem.attack(target: human)
human.health
