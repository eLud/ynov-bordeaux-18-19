//
//  MenuItem.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import Foundation

struct MenuItem {

    // Int défini la rawValue, le type de donnée qui est représenté par l'enum
    // CaseIterable permet d'utiliser une propriété allCases pour récupérer tous les cas possible d'une enum
    enum MenuItemType: Int, CaseIterable {
        case main
        case appetizer
        case desert
        case drink

        var title: String {
            switch self {
            case .main:
                return "Main"
            case .appetizer:
                return "Appetizer"
            case .desert:
                return "Desert"
            case .drink:
                return "Drink"
            }
        }
    }

    let name: String
    var price: Double
    var presentation: String
    var itemType: MenuItemType
}
