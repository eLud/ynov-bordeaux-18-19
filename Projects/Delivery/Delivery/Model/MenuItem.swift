//
//  MenuItem.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import Foundation

struct MenuItem {

    enum MenuItemType {
        case main
        case appetizer
        case desert
        case drink
    }

    let name: String
    var price: Double
    var presentation: String
    var itemType: MenuItemType
}
