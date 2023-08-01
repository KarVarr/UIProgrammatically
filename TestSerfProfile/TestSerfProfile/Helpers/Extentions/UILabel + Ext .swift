//
//  UILabel + Ext .swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit

extension UILabel {
    
    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0) {
        
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString:NSMutableAttributedString
        if let labelAttributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelAttributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        self.attributedText = attributedString
    }
    
    func setTruncatedTextIfNeeded(_ text: String) {
            self.text = text
            let maxSize = CGSize(width: bounds.width, height: .greatestFiniteMagnitude)
            let actualSize = sizeThatFits(maxSize)

            if actualSize.width > bounds.width {
                let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font ?? UIFont.systemFont(ofSize: 17)]
                let attributedText = NSAttributedString(string: text, attributes: attributes)
                let ellipsis = NSAttributedString(string: "...", attributes: attributes)
                var truncatedText = attributedText

                for i in (1..<text.count).reversed() {
                    truncatedText = attributedText.attributedSubstring(from: NSRange(location: 0, length: i))
                    let truncatedSize = truncatedText.size()
                    if truncatedSize.width + ellipsis.size().width <= bounds.width {
                        break
                    }
                }

                let mutableTruncatedText = NSMutableAttributedString(attributedString: truncatedText)
                mutableTruncatedText.append(ellipsis)
                self.attributedText = mutableTruncatedText
            } else {
                self.attributedText = NSAttributedString(string: text)
            }
        }
}
