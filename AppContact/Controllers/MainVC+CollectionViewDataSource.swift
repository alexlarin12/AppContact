//
//  MainVC+CollectionViewDataSource.swift
//  AppContact
//
//  Created by Alex Larin on 18/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

extension MainViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        let session = Session.instance
        
        cell.mainLabel.text = session.registrationName
        cell.idLabel.text = String(describing: session.userId)
        
        return cell
        
    }
    
    
    
}
