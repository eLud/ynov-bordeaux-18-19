//
//  DemoTableViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 08/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

struct Emoji {
    var symbol: String
    var name: String
}

class DemoTableViewController: UIViewController, UITableViewDataSource {

    var emojis: [Emoji] = [Emoji(symbol: "🚗", name: "voiture rouge"), Emoji(symbol: "🚕", name: "taxi"), Emoji(symbol: "🚙", name: "vehicule utilitaire de sport")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "subCell", for: indexPath)

        let currentEmoji = emojis[indexPath.row]
        cell.textLabel?.text = currentEmoji.symbol
        cell.detailTextLabel?.text = currentEmoji.name

        return cell
    }
}
