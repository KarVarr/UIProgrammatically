import UIKit
import Foundation



class Creature {
    var nameOfCreature: String
    var attack: Int
    var defense: Int
    var health: Int
    var damageRange: ClosedRange<Int>
    
    init(nameOfCreature: String ,attack: Int, defense: Int, health: Int, damageRange: ClosedRange<Int>) {
        self.nameOfCreature = nameOfCreature
        self.attack = attack
        self.defense = defense
        self.health = health
        self.damageRange = damageRange
    }
    
    func heal() {
        
    }
    
    func attack(target: Creature) {
        print("\(nameOfCreature) начинает атаку! 🗡️")
        let modifier = max(abs(self.attack - target.defense) + 1, 1)
        var damage = 0
        
        for _ in 1...modifier {
            let luckyStrike = Int.random(in: 1...6)
            if luckyStrike >= 5 {
                let attack = Int.random(in: damageRange)
                damage += attack
                print("\(nameOfCreature) атакует ⚔️, урон: \(attack), комбо: \(damage)")
            } else {
                print("\(nameOfCreature) промахнулся 💨 ")
            }
        }
        
        if damage > 0 {
            target.health -= damage
            print("HP противника 🩸: \(target.health)")
            print("---")
            if target.health <= 0 {
                target.health = 0
                print("\(nameOfCreature) побежден! ☠️")
            }
        }
    }
    
}

class Player: Creature {
    var maxHealth: Int
    var countOfHealing = 4
    
    init(nameOfCreature: String, attack: Int, defense: Int, maxHealth: Int, damageRange: ClosedRange<Int>) {
        self.maxHealth = maxHealth
        super.init(nameOfCreature: nameOfCreature, attack: attack, defense: defense, health: maxHealth, damageRange: damageRange)
    }
    
    override func heal() {
        if countOfHealing <= 0 {
            countOfHealing = 0
            print("⚠️ У вас закончились зелья исцеления. Вы можете купить новое в магазине за 4.99 $ ⚠️")
            return
        }
        
        if health > 0 {
            let maxHealing = Int(Double(maxHealth) * 0.3)
            health = min(maxHealth, health + maxHealing)
            countOfHealing -= 1
            print("💊 Игрок исцелен на \(maxHealing) HP. Текущее здоровье: \(health). Осталось зелий исцеления: \(countOfHealing)")
            if countOfHealing < 2 {
                print("⚠️ Пополните запасы зелья 🌡️")
            }
        }
    }
}

class Monster: Creature {
    override init(nameOfCreature: String,attack: Int, defense: Int, health: Int, damageRange: ClosedRange<Int>) {
        super.init(nameOfCreature: nameOfCreature,attack: attack, defense: defense, health: health, damageRange: damageRange)
    }
}

let hawk = Player(nameOfCreature: "Лучник", attack: 8, defense: 5, maxHealth: 100, damageRange: 3...9)
let stoneGolem = Monster(nameOfCreature: "Каменный голем", attack: 14, defense: 20, health: 300, damageRange: 1...3)


hawk.attack(target: stoneGolem)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
hawk.heal()
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
hawk.heal()
stoneGolem.attack(target: hawk)
hawk.heal()
stoneGolem.attack(target: hawk)
hawk.heal()
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
hawk.heal()
hawk.heal()
hawk.heal()
stoneGolem.attack(target: hawk)
stoneGolem.attack(target: hawk)
hawk.heal()
hawk.heal()
hawk.heal()

