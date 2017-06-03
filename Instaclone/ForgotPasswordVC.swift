//
//  ForgotPasswordVC.swift
//  Instaclone
//
//  Created by Ben on 6/3/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController {

    @IBOutlet weak var forgotPasswordBG: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateBG()
    }

    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }

    @IBAction func backToLogInTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func animateBG() {
        let anim = CABasicAnimation(keyPath: "position.x")
        anim.fromValue = -1638.0 + 150
        anim.toValue = 1925
        anim.duration = 30
        anim.repeatCount = Float.infinity
        anim.autoreverses = true
        forgotPasswordBG.layer.add(anim, forKey: nil)
    }

}
