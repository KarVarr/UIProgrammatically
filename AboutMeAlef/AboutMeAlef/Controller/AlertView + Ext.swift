//
//  AlertView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    @objc func showClearAlert() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Сбросить данные", style: .destructive, handler: { _ in
            self.clearData()
        }))
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        present(alert, animated: true)
    }
    
    func clearData() {
        nameTextField.text = ""
        ageTextField.text = ""
        
        childrenStackView.arrangedSubviews.forEach {
            childrenStackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        childList.removeAll()
        addChildButton.isHidden = false
    }
}
