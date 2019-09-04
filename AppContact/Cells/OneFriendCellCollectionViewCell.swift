//
//  OneFriendCellCollectionViewCell.swift
//  AppContact
//
//  Created by пользователь on 14/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class OneFriendCellCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var OneFriendLabel: UILabel!
    
    @IBOutlet weak var OneFriendImageView: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    var likeCount = 575
    @IBOutlet weak var LikeButton: LikeButton!
    
    @IBAction func likeButtonTap(_ sender: Any) {
        likeCount += 1
        likeCountLabel.text = "\(likeCount)"
    }
    
 
    
}
