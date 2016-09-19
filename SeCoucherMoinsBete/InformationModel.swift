//
//  InformationModel.swift
//  SeCoucherMoinsBete
//
//  Created by Mohamed on 18/09/2016.
//  Copyright © 2016 oulmaki. All rights reserved.
//

import Foundation
import GameplayKit

struct InformationModel {
    let informations = ["Les fourmis s'étirent le matin en se réveillant",
                        "Les autruches courent plus vite que les chevaux",
                        "Les médailles d'or olympiques sont en réalité composées principalement d'argent",
                        "Vous êtes nés avec 300 os; à l'age adulte, vous en aurez 206",
                        "La lumière du soleil prend 8 min environ pour atteindre la planète Terre",
                        "L'État de Floride a une plus grande surface que l'Angleterre"
                        ]
    
    func getRandomInfo() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: informations.count)
        return informations[randomNumber]
    }
}
