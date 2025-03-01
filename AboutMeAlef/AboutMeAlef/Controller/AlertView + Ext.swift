//
//  AlertView + Ext.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

extension ViewController {
    @objc func showClearAlert() {
        guard !childList.isEmpty else {
            return
        }
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Сбросить данные", style: .destructive, handler: { _ in
            self.clearData()
        }))
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        present(alert, animated: true)
    }
    
    func clearData() {
        nameTextField.customTextField.text = ""
        ageTextField.customTextField.text = ""
        
        childrenStackView.customStackView.arrangedSubviews.forEach {
            childrenStackView.customStackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        childList.removeAll()
        addChildButton.customButton.isHidden = false
    }
}
