//
//  ChildAct + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    func createSeparatorLine() -> UIView {
        let separatorLine = UIView()
        separatorLine.backgroundColor = UIColor.systemGray5
        separatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            separatorLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        return separatorLine
    }
    
    @objc func addChildView() {
        guard childList.count < 5 else { return }
        
        if childList.count > 0 {
            let separatorLine = createSeparatorLine()
            childrenStackView.customStackView.addArrangedSubview(separatorLine)
        }
        
        let childView = createChildView()
        childrenStackView.customStackView.addArrangedSubview(childView)
        childList.append(Child(name: "", age: ""))
        
        addChildButton.customButton.isHidden = childList.count >= 5
    }
    
    @objc func removeChild(_ sender: UIButton) {
        guard let childView = sender.superview else { return }
        
        if let index = childrenStackView.customStackView.arrangedSubviews.firstIndex(of: childView) {
            childrenStackView.customStackView.removeArrangedSubview(childView)
            childView.removeFromSuperview()
            
            if index > 0 {
                let separatorIndex = index - 1
                if separatorIndex < childrenStackView.customStackView.arrangedSubviews.count {
                    let separatorView = childrenStackView.customStackView.arrangedSubviews[separatorIndex]
                    if separatorView.frame.height == 1 {
                        childrenStackView.customStackView.removeArrangedSubview(separatorView)
                        separatorView.removeFromSuperview()
                    }
                }
            } else if childrenStackView.customStackView.arrangedSubviews.count > 0 {
                let firstView = childrenStackView.customStackView.arrangedSubviews[0]
                if firstView.frame.height == 1 {
                    childrenStackView.customStackView.removeArrangedSubview(firstView)
                    firstView.removeFromSuperview()
                }
            }
            
            if index < childList.count {
                childList.remove(at: index)
            }
            
            addChildButton.customButton.isHidden = childList.count >= 5
        }
    }
}
