//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    
   func allowEntryWithPassword(_ password: [Int]) -> Bool
}

class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

extension BankVault : ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        
        var haveAccessRight: Bool = false
        var counter = 0
        
        for digit in password {
            if counter % 2 == 0{
                if digit % 2 == 0 {
                    haveAccessRight = true
                } else {
                    haveAccessRight = false
                    return haveAccessRight
                }

                        }
            counter += 1
        }
        
        if password.isEmpty {
            haveAccessRight = false
        } else if password.count > 10 {
            haveAccessRight = false
        }
        
        return haveAccessRight
    }
}





