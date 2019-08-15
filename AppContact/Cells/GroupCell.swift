//
//  GroupCell.swift
//  AppContact
//
//  Created by пользователь on 14/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var GroupLabel: UILabel!
    
    @IBOutlet weak var GroupImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
