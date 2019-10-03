//
//  UINibExtension.swift
//  EA
//
//  Created by Emre AYDIN on 3.10.2019.
//

import UIKit

extension UINib {
    @available(*, deprecated, renamed: "view")
    public func viewFrom(owner: Any) -> UIView? {
        return self.instantiate(withOwner: owner, options: nil).first as? UIView
    }
    
    public func view(withOwner: Any) -> UIView? {
        return self.instantiate(withOwner: withOwner, options: nil).first as? UIView
    }
}
