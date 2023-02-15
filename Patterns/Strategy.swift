//
//  Strategy.swift
//  Strategy
//
//  Created by Erkhaan  on 15.02.2023.
//

import Foundation

class Player {
    private var weaponBehaviour: WeaponBehaviour
    
    init() {
        weaponBehaviour = Fists()
    }
    
    func roll() {
        print("Roll")
    }
    
    func hitEnemy() {
        weaponBehaviour.attack()
    }
    
    func set(weapon weaponBehaviour: WeaponBehaviour) {
        print("Weapon switch to \(type(of: weaponBehaviour))")
        self.weaponBehaviour = weaponBehaviour
    }
}

protocol WeaponBehaviour {
    func attack()
}

class Fists: WeaponBehaviour {
    func attack() {
        print("Strike damage")
    }
}

class Sword: WeaponBehaviour {
    func attack() {
        print("Slash damage")
    }
}

class Rapier: WeaponBehaviour {
    func attack() {
        print("Thrust damage")
    }
}

class Hammer: WeaponBehaviour {
    func attack() {
        print("Strike damage")
    }
}

class StrategySample {
    let claymore = Sword()
    let club = Hammer()
    let estoc = Rapier()
    let ashenOne = Player()
    
    init() {
        ashenOne.roll()
        ashenOne.hitEnemy()
        ashenOne.set(weapon: claymore)
        ashenOne.hitEnemy()
        ashenOne.set(weapon: club)
        ashenOne.hitEnemy()
        ashenOne.set(weapon: estoc)
        ashenOne.hitEnemy()
    }
}

