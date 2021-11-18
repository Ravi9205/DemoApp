//
//  PlacesListCell.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 04/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import UIKit

class PlacesListCell: UITableViewCell {

    @IBOutlet weak var imgView:LazyImageView!
    @IBOutlet weak var lbl_State:UILabel!
    @IBOutlet weak var lbl_city:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
