//
//  ViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 31/01/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sayHello(_ sender: UIButton) {

        sender.isEnabled = false
        firstLabel.text = "Hello"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showCalculator" {
            guard let destination = segue.destination as? CalculatorViewController else {
                fatalError("Expected CalculatorViewController")
            }
            destination.title = "Calculator"
            destination.screenColor = .blue
        }
    }

}

