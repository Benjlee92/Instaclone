//
//  SignUpVC.swift
//  Instaclone
//
//  Created by Ben on 6/3/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var signInBackground: UIImageView!
    @IBOutlet weak var nextButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self

    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateBG()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func animateBG() {
        let anim = CABasicAnimation(keyPath: "position.x")
        anim.fromValue = -1638.0 + 150
        anim.toValue = 1925
        anim.duration = 30
        anim.repeatCount = Float.infinity
        anim.autoreverses = true
        signInBackground.layer.add(anim, forKey: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Checks if there is at least 1 character in the emailField. If so, the sendLoginLink button becomes active and changes image to the active image.
        
        if string != "" && emailField.text != "" {
            print("keyboard key click detected")
            nextButton.image = UIImage(named: "NextButtonActive")
            nextButton.isUserInteractionEnabled = true
        } else {
            nextButton.image = UIImage(named: "NextButtonInactive")
            nextButton.isUserInteractionEnabled = false
        }
        return true
    }

    


}
