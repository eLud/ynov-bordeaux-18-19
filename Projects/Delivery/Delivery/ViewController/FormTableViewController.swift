//
//  FormTableViewController.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/03/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

// UITableView controller using a static content used as form
class FormTableViewController: UITableViewController {

    @IBOutlet weak var typeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    @IBAction func save(_ sender: Any) {

        guard let type = MenuItem.MenuItemType(rawValue: typeSegmentedControl.selectedSegmentIndex) else { return }
        guard let name = nameTextField.text, name.count > 0 else { return }
        guard let priceString = priceTextField.text, let priceDouble = Double(priceString) else { return }
        guard let productPresentation = descriptionTextView.text, productPresentation.count > 0 else { return }

        let menuItem = MenuItem.init(name: name, price: priceDouble, presentation: productPresentation, itemType: type)
        Restaurant.instance.add(item: menuItem)

        dismiss(animated: true, completion: nil)
    }

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    private func configureUI() {
        let allTypes = MenuItem.MenuItemType.allCases
        typeSegmentedControl.removeAllSegments()
        for type in allTypes {
            typeSegmentedControl.insertSegment(withTitle: type.title, at: 0, animated: false)
        }
    }
}
