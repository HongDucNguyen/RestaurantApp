//
//  ResListTableViewCell.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class ResListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet var nameImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
