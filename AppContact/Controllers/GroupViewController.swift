//
//  GroupViewController.swift
//  AppContact
//
//  Created by Alex Larin on 10/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {
    var groupPhotos:[GroupCarPhotoModel] = []
    var groupNameForTitle:String = ""
    
    
    @IBOutlet weak var aloneGroupLabel: UILabel!
    
    @IBOutlet weak var aloneGroupCollectionView: UICollectionView!
    
    @IBOutlet weak var aloneGroupTableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = groupNameForTitle
        
        
        
        aloneGroupCollectionView.register(UINib(nibName: "AloneGroupCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AloneGroupCollectionViewCell")
        aloneGroupCollectionView.dataSource = self
        
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto1")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto2")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto3")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto4")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto5")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto6")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto7")!))
        groupPhotos.append(GroupCarPhotoModel(groupCarPhotoImage: UIImage(named: "auto8")!))        // Do any additional setup after loading the view.
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
