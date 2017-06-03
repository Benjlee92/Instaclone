//
//  BlurredView.swift
//  Instaclone
//
//  Created by Ben on 6/2/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class BlurredView: UIView {

    override func awakeFromNib() {
        
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = layer.bounds
        self.addSubview(blurEffectView)
        
        
        layer.masksToBounds = true
        layer.cornerRadius = 4.0
    }

}
