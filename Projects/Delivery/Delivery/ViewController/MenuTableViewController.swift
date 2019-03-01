//
//  MenuTableViewController.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/03/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    // Propriété calculée qui tranforme le tableau de MenuItem en Dictionnaire regroupant les menuItems en utilisant les catégories comme clé
    var menu: [MenuItem.MenuItemType : [MenuItem]] {
        return Dictionary(grouping: Restaurant.instance.completeMenu) { (element) -> MenuItem.MenuItemType in
            return element.itemType
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Ajout d'un observer qui va écouter la notification nommée "modelUpdated" et qui va faire un reload du tableView qui il la reçoit
        NotificationCenter.default.addObserver(forName: Notification.Name("modelUpdated"), object: nil, queue: OperationQueue.main) { (note) in
            self.tableView.reloadData()
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        // Autant de section que de type de plats
        return MenuItem.MenuItemType.allCases.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        // Avec le numéro de la section, on récupère le type correspondant grâce à la rawValue
        guard let sectionType = MenuItem.MenuItemType.init(rawValue: section) else { fatalError("This should not happen") }

        // On vérifie si on a une tableau dans le dictionnaire pour ce type. Sinon on retourne 0.
        guard let items = menu[sectionType] else { return 0 }

        // On retourne le nombre d'éléments de ce type
        return items.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // On récupère une cellule recyclable avec l'identifier "menuItemCell" défini dans le storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItemCell", for: indexPath)

        // On identifie le menuItem correspondant à l'indexPath demandé
        guard let sectionType = MenuItem.MenuItemType.init(rawValue: indexPath.section) else { fatalError("This should not happen") }
        guard let items = menu[sectionType] else { fatalError() }
        let menuItem = items[indexPath.row]

        // On configure la cellule avec le menuItem
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = "\(menuItem.price)€"

        return cell
    }


}
