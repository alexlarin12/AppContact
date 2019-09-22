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
    
    @IBOutlet weak var LoginButtonLabel: UIButton!
    
    @IBOutlet weak var mainLoadView: UIView!
    
    @IBOutlet weak var load1View: UIView!
    
    @IBOutlet weak var load2View: UIView!
    
    @IBOutlet weak var load3View: UIView!
    
    
    @IBAction func LogInButton(_ sender: UIButton) {
        checkTextFields()
    }
    
    @IBAction func UnwindSegue(unwindSegue:UIStoryboardSegue){
        
    }
    
    
    func checkTextFields() {
        let session = Session.instance
        if UserNameTextField.text == session.newUserName,
            PasswordTextField.text == session.newPassword {
            print("Успешный вход.")
            performSegue(withIdentifier: "SuccessLogin", sender: nil)
            
        } else {
            let alert = UIAlertController(title: "Error", message: "Incorrect login or password", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default) { _ in
                self.PasswordTextField.text = ""
                self.UserNameTextField.text = ""
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
        
        UIView.animate(withDuration: 0.5,delay: 0.25,options: [.repeat, .autoreverse], animations: {
            self.load1View.alpha = 0.2
        })
        UIView.animate(withDuration: 0.5,delay: 0.5,options: [.repeat, .autoreverse], animations: {
            self.load2View.alpha = 0.2
        })
        UIView.animate(withDuration: 0.5,delay: 0.75,options: [.repeat, .autoreverse], animations: {
            self.load3View.alpha = 0.2
        })
        // Do any additional setup after loading the view.
        UIView.animate(withDuration: 0.5, delay: 1.5, animations: {
            self.load1View.backgroundColor = .clear
            self.load2View.backgroundColor = .clear
            self.load3View.backgroundColor = .clear
            
        })
        UIView.animate(withDuration: 0.5, delay: 2, options: .curveEaseIn, animations: {
            self.mainLoadView.backgroundColor = .clear
        })
      
        load2View.layer.cornerRadius = 10
        load1View.layer.cornerRadius = 10
        load3View.layer.cornerRadius = 10
        mainLoadView.layer.cornerRadius = 10
        
        self.animateFieldsAppearing()
        self.animateTitleAppearing()
        self.animateTitlesAppearing()
        self.animateAuthButton()        // Do any additional setup after loading the view.
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
    func animateTitlesAppearing() {
        let offset = view.bounds.width
        UserNameTextField.transform = CGAffineTransform(translationX: -offset, y: 0)
        PasswordTextField.transform = CGAffineTransform(translationX: offset, y: 0)
        
        UIView.animate(withDuration: 1,
                       delay: 1,
                       options: .curveEaseOut,
                       animations: {
                        self.UserNameTextField.transform = .identity
                        self.PasswordTextField.transform = .identity
        },
                       completion: nil)
    }
    
    
    func animateTitleAppearing() {
        self.AppContactLabel.transform = CGAffineTransform(translationX: 0,y: -self.view.bounds.height/2)
        
        UIView.animate(withDuration: 1,
                       delay: 1,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0,
                       options: .curveEaseOut,
                       animations: {
                        self.AppContactLabel.transform = .identity
        },
                       completion: nil)
    }
    
    
    func animateFieldsAppearing() {
        let fadeInAnimation = CABasicAnimation(keyPath: "opacity")
        fadeInAnimation.fromValue = 0
        fadeInAnimation.toValue = 1
        fadeInAnimation.duration = 1
        fadeInAnimation.beginTime = CACurrentMediaTime() + 1
        fadeInAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        fadeInAnimation.fillMode = CAMediaTimingFillMode.backwards
        
        self.UserNameTextField.layer.add(fadeInAnimation, forKey: nil)
        self.PasswordTextField.layer.add(fadeInAnimation, forKey: nil)
    }
    
    
    func animateAuthButton() {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 2
        animation.beginTime = CACurrentMediaTime() + 1
        animation.fillMode = CAMediaTimingFillMode.backwards
        
        self.LoginButtonLabel.layer.add(animation, forKey: nil)
    }
    
    
    
    
    
    
    
    
    
    
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
