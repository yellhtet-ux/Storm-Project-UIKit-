//
//  ViewController.swift
//  Strom Project
//
//  Created by Timmy Cole on 4/15/23.
//

import UIKit

class ViewController: UIViewController{
    
    var Images = ["img1","img2","img3","img4","img5","img6","img7","img8","img9","img10"]
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self;
        tableView.dataSource = self;
        self.navigationItem.title = "Cloud Images";
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);
        
        cell.textLabel?.text = Images[indexPath.row];
        return cell;
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let imageVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            imageVC.selectedImage = Images[indexPath.row]
            self.navigationController?.pushViewController(imageVC, animated: true)
        }
       
    }
}

