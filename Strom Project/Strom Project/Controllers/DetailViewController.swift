//
//  DetailViewController.swift
//  Strom Project
//
//  Created by Timmy Cole on 4/15/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            imageView.contentMode = .scaleAspectFit;
            imageView.image = UIImage(named: imageToLoad);
        }else {
            print("error!!")
        }
    }
}
