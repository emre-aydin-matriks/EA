//
//  CustomView.swift
//  EA
//
//  Created by Emre AYDIN on 3.10.2019.
//

import UIKit

open class CustomView: UIView {
    
    open var viewNib: UINib { return UINib(nibName: "CustomView", bundle: Bundle(for: CustomView.self)) }
    
    @IBOutlet weak var eaLabel: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
//        let podBundle = Bundle(for: CustomView.self)
//        if let bundleURL = podBundle.url(forResource: "EA", withExtension: "bundle") {
//            if let bundle = Bundle(url: bundleURL) {
//                let cellNib = UINib(nibName: "CustomView", bundle: bundle)
//
//             }else {
//                assertionFailure("Could not load the bundle")
//             }
//        } else {
//           assertionFailure("Could not create a path to the bundle")
//        }
        
        guard let contentView = viewNib.view(withOwner: self) else { return }
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        eaLabel.layer.borderColor = UIColor.white.cgColor
        eaLabel.layer.borderWidth = 6
        eaLabel.layer.cornerRadius = eaLabel.frame.width/2
        eaLabel.clipsToBounds = true
        eaLabel.textColor = .white
        eaLabel.font = UIFont.boldSystemFont(ofSize: 66)
        eaLabel.text = "EA"
    }

}
