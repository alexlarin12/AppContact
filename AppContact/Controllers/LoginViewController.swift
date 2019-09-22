//
//  RegistrationViewController.swift
//  AppContact
//
//  Created by Alex Larin on 18/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var newRegistrationNameTextField: UITextField!
    
    @IBOutlet weak var newUserNameTextField: UITextField!
    
    @IBOutlet weak var newPasswordTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor), name: NSNotification.Name.init(rawValue: "newRegistrationButton"), object: nil)        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WatchFriend",
            let launchController = segue.destination as? LaunchController {
            
            launchController.UserNameTextField = newUserNameTextField
            launchController.PasswordTextField = newPasswordTextField
            
        }
 
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   */
    
    @IBAction func newRegistrationButton(_ sender: UIButton) {
  NotificationCenter.default.post(name: NSNotification.Name.init(rawValue: "newRegistrationButton"), object: nil)
        let session = Session.instance
        session.registrationName = newRegistrationNameTextField.text ?? ""
        session.newUserName = newUserNameTextField.text ?? ""
        session.newPassword = newPasswordTextField.text ?? ""
        session.userId = 1234567
        
        
        
        
    }
    
    @objc func changeColor(){
        if  view.backgroundColor == .blue{
            view.backgroundColor = .green       }else{
            view.backgroundColor = .blue
        }
    }
    
}
