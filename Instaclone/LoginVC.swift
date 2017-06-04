//
//  LoginVC.swift
//  Instaclone
//
//  Created by Ben on 6/2/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginAlertMessage: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBackground: UIImageView!
    @IBOutlet weak var loginButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self
        passwordField.delegate = self
        
        animateBG()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateBG()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    // Creates a white status bar.
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
//    }

    @IBAction func helpSigningInTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgotPasswordSegue", sender: nil)
    }
    
    func animateBG() {
    // Animation for the background
        let anim = CABasicAnimation(keyPath: "position.x")
        anim.fromValue = -1638.0 + 150
        anim.toValue = 1925
        anim.duration = 30
        anim.repeatCount = Float.infinity
        anim.autoreverses = true
        loginBackground.layer.add(anim, forKey: nil)
    }
    
    func animateAlertMessage() {
    // Animation for the alert message
        
        let anim = CABasicAnimation(keyPath: "opacity")
        anim.fromValue = 1.0
        anim.toValue = 0.0
        anim.duration = 5.0
        loginAlertMessage.layer.add(anim, forKey: nil)
        loginAlertMessage.isUserInteractionEnabled = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    // Checks if there is at least 1 character in the emailField and passwordField. If so, the Login button becomes active and changes image to the active image.
        
        if string != "" && emailField.text != "" {
            print("keyboard key click detected")
            loginButton.image = UIImage(named: "LoginActive")
            loginButton.isUserInteractionEnabled = true
        } else {
            loginButton.image = UIImage(named: "LoginInactive")
            loginButton.isUserInteractionEnabled = false
        }
        return true
    }
    

    @IBAction func loginButtonTapped(_ sender: Any) {

        if emailField.text == "" || passwordField.text == "" {
            loginAlertMessage.isHidden = false
            animateAlertMessage()
            
        }
        loginAlertMessage.isHidden = true
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "SignUpSegue", sender: nil)
    }
    
}
