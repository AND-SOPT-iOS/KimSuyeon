//
//  UITextField+.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/2/24.
//

import UIKit

extension UITextField {
    func setPlaceholder(text: String, color: UIColor) {
        attributedPlaceholder = NSAttributedString(
            string: text, attributes: [.foregroundColor: color]
        )
    }
    
    func setLayer(borderWidth: CGFloat = 0, borderColor: UIColor, cornerRadius: CGFloat) {
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
    }
    
    func addPadding(left: CGFloat? = nil, right: CGFloat? = nil) {
        if let left {
            leftView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
            leftViewMode = .always
        }
        if let right {
            rightView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: 0))
            rightViewMode = .always
        }
    }
}
