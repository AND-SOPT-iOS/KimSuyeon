//
//  NSAttributedString+.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/16/24.
//

import UIKit

extension NSAttributedString {
    static func makeAttributedString(
        _ text: String = "",
        font: UIFont,
        lineHeight: CGFloat
    ) -> NSAttributedString {
        let fontSize = font.pointSize
        let lineHeight = fontSize * lineHeight
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.maximumLineHeight = lineHeight
        paragraphStyle.minimumLineHeight = lineHeight
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .paragraphStyle: paragraphStyle,
            .baselineOffset: (lineHeight - fontSize) / 3
        ]
        
        return NSAttributedString(string: text, attributes: attributes)
    }
}
