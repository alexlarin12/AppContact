//
//  FriendsTableViewController.swift
//  AppContact
//
//  Created by пользователь on 10/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var friends:[FriendsModel] = [
        FriendsModel(friendName: "Alex Larin", friendImage: UIImage(named: "img1")!),
        FriendsModel(friendName: "Elena Voevodina", friendImage: UIImage(named: "catfriend2")!),
        FriendsModel(friendName: "Masha Larina", friendImage: UIImage(named: "catfriend4")!),
        FriendsModel(friendName: "Ivan Larin", friendImage: UIImage(named: "catfriend1")!),
        FriendsModel(friendName: "Nastya Larina", friendImage: UIImage(named: "catfriend3")!)]
     override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendCell
        let friend = friends[indexPath.row]
        
        cell.FriendLabel.text = friend.friendName
        cell.FriendImageView.image = friend.friendImage
        // Configure the cell...

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "WatchFriend",
            let oneFriendController = segue.destination as? OneFriendCollectionViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            let name = friends[indexPath.row].friendName
            let image = friends[indexPath.row].friendImage
            oneFriendController.friendNameForTitle = name
            oneFriendController.friendImageForCollection = image
        }
        
        
        
        
    }
 

}
