//
//  NewsViewController.swift
//  AppContact
//
//  Created by Alex Larin on 31/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    var news:[NewsModel] = []
    
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
        self.newsTableView.rowHeight = 350
        self.newsTableView.dataSource = self
        
        news.append(NewsModel(userImageNews: "img1", userNameNews: "Alex Larin", timeNews: "20 august 11-52", textNews: "I like this device. I would like to buy it", imageNews: "macbook"))
        news.append(NewsModel(userImageNews: "catfriend3", userNameNews: "Nastya Larina", timeNews: "17 august 9-45", textNews: "I had a good time", imageNews: "hotel1"))
        news.append(NewsModel(userImageNews: "catfriend1", userNameNews: "Ivan Larin", timeNews: "19 august 11-17", textNews: "This is my dream", imageNews: "tesla"))
        news.append(NewsModel(userImageNews: "catfriend2", userNameNews: "Elena Voevodina", timeNews: "tomorrow 19-25", textNews: "just a cat", imageNews: "justcat"))

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
