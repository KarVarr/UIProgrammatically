//
//  ViewController.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var childList: [Child] = []
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    let childrenStackView = UIStackView()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Персональные данные"
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Имя"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.font = UIFont.systemFont(ofSize: 16)
        return textField
    }()
    
    let nameContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        view.layer.cornerRadius = 4
        return view
    }()
    
    let ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Возраст"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let ageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Возраст"
        textField.keyboardType = .numberPad
        textField.font = UIFont.systemFont(ofSize: 16)
        return textField
    }()
    
    let ageContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        view.layer.cornerRadius = 4
        return view
    }()
    
    let childrenHeaderStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        return stack
    }()
    
    let childrenLabel: UILabel = {
        let label = UILabel()
        label.text = "Дети (макс. 5)"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    let addChildButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить ребенка", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 20
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .systemBlue
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(addChildView), for: .touchUpInside)
        return button
    }()
    
    let clearButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Очистить", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.red, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(showClearAlert), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        ageTextField.delegate = self
        
        setupLayout()
        setupGestureRecognizer()
        setupKeyboardObservers()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        
        guard let newText = (currentText as NSString).replacingCharacters(in: range, with: string) as String? else {
            return false
        }
        
        if let newValue = Int(newText), newValue <= 99 {
            return true
        } else if newText.isEmpty {
            return true
        } else {
            textField.text = "99"
            return false
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
