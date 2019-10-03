//
//  EAView.swift
//  EA
//
//  Created by Emre AYDIN on 20.09.2019.
//

import UIKit

open class EAView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1)
        
        let labelWidth = self.frame.width/2
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: labelWidth, height: labelWidth))
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 6
        label.layer.cornerRadius = label.frame.width/2
        label.clipsToBounds = true
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 66)
        label.text = "EA"
        
        self.addSubview(label)
        
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}
