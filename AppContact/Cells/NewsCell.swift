//
//  NewsCell.swift
//  AppContact
//
//  Created by Alex Larin on 31/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var userNewsText: UITextView!
    
    @IBOutlet weak var userNewsImage: UIImageView!
    
    @IBOutlet weak var likeButtonRed: LikeButtonRed!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 27
    
    @IBAction func likeCount(_ sender: Any) {
        count += 1
        countLabel.text = "\(count)"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupCellFromNewsModel(_ news:NewsModel){
        self.userImageView.image = UIImage(named: news.userImageNews ?? "")
        self.userNameLabel.text = news.userNameNews
        self.timeLabel.text = news.timeNews
        self.userNewsText.text = news.textNews
        self.userNewsImage.image = UIImage(named: news.imageNews ?? "")
    }
    
}
