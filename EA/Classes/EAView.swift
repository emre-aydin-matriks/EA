//
//  EAView.swift
//  EA
//
//  Created by Emre AYDIN on 20.09.2019.
//

import UIKit

class EAView: UIView {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1)
        
        let labelWidth = self.frame.width/2
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: labelWidth, height: labelWidth))
        label.center = self.center
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 6
        label.layer.cornerRadius = label.frame.width/2
        label.clipsToBounds = true
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 66)
        label.text = "EA"
        
        self.addSubview(label)
    }
    
}
