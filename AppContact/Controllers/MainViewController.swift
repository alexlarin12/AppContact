//
//  MainViewController.swift
//  AppContact
//
//  Created by Alex Larin on 18/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var mainTaibleView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionViewCell")
        mainCollectionView.dataSource = self
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
