//
//  BigEmojiTableViewCell.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 28/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class BigEmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var bigEmojiLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with emoji: String) {
        bigEmojiLabel.text = emoji
    }

    //Préparer a la réutilisation de la cellule
    override func prepareForReuse() {
        bigEmojiLabel.text = ""
        backgroundColor = .white
    }
}
