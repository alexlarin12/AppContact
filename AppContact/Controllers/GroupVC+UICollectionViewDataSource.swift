//
//  GroupVC+UICollectionViewDataSource.swift
//  AppContact
//
//  Created by Alex Larin on 10/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

extension GroupViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return groupPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AloneGroupCollectionViewCell", for: indexPath) as! AloneGroupCollectionViewCell
         let photo = groupPhotos[indexPath.row]
    
        cell.groupPhotosImageView.image = photo.groupCarPhotoImage
        return cell
    }
    
    
    
    
}
