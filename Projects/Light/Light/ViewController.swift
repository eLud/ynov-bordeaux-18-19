//
//  ViewController.swift
//  Light
//
//  Created by Ludovic Ollagnier on 01/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }

    @IBAction func toggleLight(_ sender: UIButton) {

        let currentColor = view.backgroundColor

        if currentColor == .white {
            view.backgroundColor = .black
            sender.setTitle("Noir", for: .normal)
        } else {
            view.backgroundColor = .white
            sender.setTitle("Blanc", for: .normal)
        }
    }
    
}

