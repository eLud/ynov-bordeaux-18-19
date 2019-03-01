//
//  Restaurant.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import Foundation

class Restaurant {

    // Utilisation d'un singleton pour permettre l'accès simplifié au restaurant de notre app
    // À utiliser avec modération, et uniquement pour des instances dont la durée de vie est égale à celle de l'app
    static let instance = Restaurant(name: "Default Restaurant", address: "1 Infinite Loop, Cupertino, CA")

    let name: String
    let address: String
    private var menu: [MenuItem]

    // Le init est mis en private pour empecher son utilisation hors de la classe
    private init(name: String, address: String, menu: [MenuItem] = []) {
        self.name = name
        self.address = address
        self.menu = menu
    }

    // Méthode d'abstraction permettant l'ajout d'un élément dans le menu
    func add(item: MenuItem) {
        menu.append(item)

        // Utilisation d'une notification interne pour informer que le modèle à été modifié
        // Cela permet de notifierautomatiquement les controleurs qui écoutent cette notification
        NotificationCenter.default.post(name: Notification.Name("modelUpdated"), object: nil)
    }

    var completeMenu: [MenuItem] {
        return menu
    }
}
