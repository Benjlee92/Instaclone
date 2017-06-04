//
//  ForgotPasswordVC.swift
//  Instaclone
//
//  Created by Ben on 6/3/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var forgotPasswordBG: UIImageView!
    @IBOutlet weak var sendLoginLinkButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateBG()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    // Creates a white status bar.
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    func animateBG() {
        // Animation for the background

        let anim = CABasicAnimation(keyPath: "position.x")
        anim.fromValue = -1638.0 + 150
        anim.toValue = 1925
        anim.duration = 30
        anim.repeatCount = Float.infinity
        anim.autoreverses = true
        forgotPasswordBG.layer.add(anim, forKey: nil)
    }

    @IBAction func backToLogInTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    // Checks if there is at least 1 character in the emailField. If so, the sendLoginLink button becomes active and changes image to the active image.
        
        if string != "" && emailField.text != "" {
            print("keyboard key click detected")
            sendLoginLinkButton.image = UIImage(named: "SendLoginlinkActive")
            sendLoginLinkButton.isUserInteractionEnabled = true
        } else {
            sendLoginLinkButton.image = UIImage(named: "SendLoginLinkInactive")
            sendLoginLinkButton.isUserInteractionEnabled = false
        }
        return true
    }

}
