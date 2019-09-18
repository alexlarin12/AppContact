//
//  MainCollectionViewCell.swift
//  AppContact
//
//  Created by Alex Larin on 18/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainImageView: FriendCircleImageView!
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
