//
//  ChildAct + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    @objc func addChildView() {
        guard childList.count < 5 else { return }
        
        let childView = createChildView()
        childrenStackView.addArrangedSubview(childView)
        childList.append(Child(name: "", age: ""))
        
        addChildButton.isHidden = childList.count >= 5
    }
    
    
    @objc func removeChild(_ sender: UIButton) {
        guard let childView = sender.superview else { return }
        
        if let index = childrenStackView.arrangedSubviews.firstIndex(of: childView) {
            childrenStackView.removeArrangedSubview(childView)
            childView.removeFromSuperview()
            
            if index < childList.count {
                childList.remove(at: index)
            }
            
            addChildButton.isHidden = childList.count >= 5
        }
    }
}
