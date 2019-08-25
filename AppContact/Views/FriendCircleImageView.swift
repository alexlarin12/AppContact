//
//  FriendCircleImageView.swift
//  AppContact
//
//  Created by пользователь on 17/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class FriendCircleImageView: UIImageView {
    var friendView: UIImage? {
        didSet{
            friendImageView.image = friendView
        }
    }
    private var friendImageView: UIImageView!
    override func awakeFromNib() {
        super .awakeFromNib()
        
        friendImageView = UIImageView(frame: bounds)
        self.friendImageView.clipsToBounds = true
        
        addSubview(friendImageView)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        friendImageView.frame = bounds
        layer.cornerRadius = bounds.width/2
        friendImageView.layer.cornerRadius = bounds.width/2
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
