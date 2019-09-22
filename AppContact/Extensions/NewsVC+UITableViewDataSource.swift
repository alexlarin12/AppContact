//
//  File.swift
//  AppContact
//
//  Created by Alex Larin on 31/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

extension NewsViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "NewsCell") as!NewsCell
        cell.setupCellFromNewsModel(news[indexPath.row])
        return cell
    }
    
    
    
    
    
}
