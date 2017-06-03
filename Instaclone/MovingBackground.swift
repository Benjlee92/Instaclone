//
//  MovingBackground.swift
//  Instaclone
//
//  Created by Ben on 6/2/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class MovingBackground: UIImageView {
    
    override func awakeFromNib() {
        let anim = CABasicAnimation(keyPath: "position.x")
        anim.fromValue = -1638.0 + 150
        anim.toValue = 1925
        anim.duration = 30
        anim.repeatCount = Float.infinity
        anim.autoreverses = true
        layer.add(anim, forKey: nil)
    }
    


}
