//
//  Restaurant.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import Foundation

class Restaurant {

    let name: String
    let address: String
    var menu: [MenuItem]

    init(name: String, address: String, menu: [MenuItem] = []) {
        self.name = name
        self.address = address
        self.menu = menu
    }
}
