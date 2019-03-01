//
//  ViewController.swift
//  Delivery
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let champagne = MenuItem.init(name: "Champagne", price: 80, presentation: "A boire", itemType: .drink)
        
        var resto = Restaurant(name: "Nom", address: "")
        resto.add(item: champagne)
    }

}

