//
//  LaunchController.swift
//  AppContact
//
//  Created by пользователь on 03/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class LaunchController: UIViewController {
    @IBOutlet weak var AppContactLabel: UILabel!
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBAction func LogInButton(_ sender: Any) {
        checkTextFields()
    }
    func checkTextFields() {
        if UserNameTextField.text == "",
            PasswordTextField.text == "" {
            print("Успешный вход.")
        } else {
            let alert = UIAlertController(title: "Error", message: "Incorrect login or password", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default) { _ in
                self.PasswordTextField.text = ""
            }
            
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // управление жестом
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        ScrollView?.addGestureRecognizer(hideKeyboardGesture)
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //  уведомление при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // уведомление при исчезновении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // отписываемся от уведомлений
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    // когда клавиатура появляется:
    @objc func keyboardWasShown(notification:Notification){
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.height, right: 0)
        self.ScrollView?.contentInset = contentInsets
        ScrollView?.scrollIndicatorInsets = contentInsets
        
    }
    // когда клавиатура исчезает:
    @objc func keyboardWillBeHidden(notification:Notification){
        let contentInsets = UIEdgeInsets.zero
        self.ScrollView?.contentInset = contentInsets
        ScrollView?.scrollIndicatorInsets = contentInsets
        
    }
    @objc func hideKeyboard(){
        self.ScrollView.endEditing(true)
    }
    
}
