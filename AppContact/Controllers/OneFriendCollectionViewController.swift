//
//  OneFriendCollectionViewController.swift
//  AppContact
//
//  Created by пользователь on 10/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit
/*
private let reuseIdentifier = "OneFriendCell"
*/
class OneFriendCollectionViewController: UICollectionViewController {

    var friendNameForTitle:String = ""
    var friendImageForCollection:UIImage = UIImage(named: "img1")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = friendNameForTitle

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
/*
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
*/
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
/*
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
*/

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OneFriendCell", for: indexPath) as! OneFriendCellCollectionViewCell
        // Configure the cell
        cell.OneFriendImageView.image = friendImageForCollection
        cell.OneFriendLabel.text = friendNameForTitle
        cell.likeCountLabel.text = "575"
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
class LikeButton: UIControl{
    var isLiked: Bool = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let sideOne = rect.height * 0.4
        let sideTwo = rect.height * 0.3
        let arcRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2
        let path = UIBezierPath()
        
        
        path.addArc(withCenter: CGPoint(x: rect.height * 0.3, y: rect.height * 0.35), radius: arcRadius, startAngle: 135.degreesToRadians, endAngle: 315.degreesToRadians, clockwise: true)
       
        path.addArc(withCenter: CGPoint(x: rect.height * 0.7, y: rect.height * 0.35), radius: arcRadius, startAngle: 225.degreesToRadians, endAngle: 45.degreesToRadians, clockwise: true)
        path.addLine(to: CGPoint(x: rect.height * 0.5, y: rect.height * 0.95))
        path.close()
        UIColor.red.setStroke()
        UIColor.red.setFill()
        isLiked ? path.fill() : path.stroke()
    }
    func setupView(){
        self.addTarget(self, action: #selector(changeState), for: .touchUpInside)
        self.backgroundColor = UIColor.clear
        self.layer.cornerRadius = min(self.bounds.height, self.bounds.width)/5
        clipsToBounds = true
        
    }
    @objc func valueDidChanged(){

    }
    
    @objc func changeState(){
        isLiked.toggle()
        self.sendActions(for: .valueChanged)
        setNeedsDisplay()
    }
}
extension Int {
    var degreesToRadians: CGFloat { return CGFloat(self) * .pi / 180 }
}
