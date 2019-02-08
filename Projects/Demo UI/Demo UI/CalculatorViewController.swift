//
//  CalculatorViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 07/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var screenColor: UIColor = .white
    @IBOutlet weak var screenView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        screenView.backgroundColor = screenColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
