//
//  SavedSearchTableViewCell.swift
//  Photo Shopper
//
//  Created by TroyHalpin on 2/28/17.
//  Copyright © 2017 Troy. All rights reserved.
//

import UIKit

class SavedSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var itemName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func searchForItem(_ sender: Any) {
        print("hopefully this works!")
    }

}
