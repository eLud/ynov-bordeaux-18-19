//
//  URLRequestViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 01/03/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class URLRequestViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/1138px-Swift_logo.svg.png")!

        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data, let image = UIImage(data: data) else { return }

            DispatchQueue.main.async {
                self.imageView.image = image
            }
            print("fini")
        }
        task.resume()
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
