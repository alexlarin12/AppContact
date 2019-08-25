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
    
    @IBOutlet weak var ShadowView: ShadowView!
    
    @IBOutlet weak var ContentView: ContentCellView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    ShadowView.backgroundColor = .clear
    contentView.backgroundColor = #colorLiteral(red: 0.9595988393, green: 1, blue: 0.7413884997, alpha: 1)
        
       

       
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
}
