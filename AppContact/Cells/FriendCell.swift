//
//  FriendCell.swift
//  AppContact
//
//  Created by пользователь on 14/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var FriendLabel: UILabel!
    
    @IBOutlet weak var FriendImageView: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
