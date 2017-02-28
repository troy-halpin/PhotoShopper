//
//  ViewController.swift
//  Photo Shopper
//
//  Created by TroyHalpin on 2/25/17.
//  Copyright © 2017 Troy. All rights reserved.
//

import UIKit

class SearchesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var newImg : UIImage!

    @IBOutlet weak var searchesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchesTableView.delegate = self
        searchesTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchesTableView.dequeueReusableCell(withIdentifier: "savedSearchCell")! as! SavedSearchTableViewCell
        
        if let tempImg = newImg {
            cell.itemImage.image = tempImg
        } else {
            cell.itemImage.image = UIImage(named: "plaid_pillow.jpg")
        }
        cell.itemName.text = "Name"
        
        return cell
    }
    
    @IBAction func toCameraButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    


}

