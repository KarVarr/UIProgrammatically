//
//  ViewController.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    var childList: [Child] = []
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Персональные данные"
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Имя"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.font = UIFont.systemFont(ofSize: 16)
        return textField
    }()
    
    private let nameContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        view.layer.cornerRadius = 4
        return view
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Возраст"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let ageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Возраст"
        textField.keyboardType = .numberPad
        textField.font = UIFont.systemFont(ofSize: 16)
        return textField
    }()
    
    private let ageContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        view.layer.cornerRadius = 4
        return view
    }()
    
    private let childrenHeaderStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        return stack
    }()
    
    private let childrenLabel: UILabel = {
        let label = UILabel()
        label.text = "Дети (макс. 5)"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    private let addChildButton: UIButton = {
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
    
    private let clearButton: UIButton = {
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
    
    private let childrenStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        ageTextField.delegate = self
        
        setupLayout()
        setupGestureRecognizer()
        setupKeyboardObservers()
    }
    
    private func setupLayout() {
        [
            scrollView,
            contentView,
            titleLabel,
            nameLabel,
            nameTextField,
            nameContainerView,
            ageLabel,
            ageTextField,
            ageContainerView,
            childrenHeaderStack,
            childrenLabel,
            addChildButton,
            childrenStackView,
            clearButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        nameContainerView.addSubview(nameLabel)
        nameContainerView.addSubview(nameTextField)
        ageContainerView.addSubview(ageLabel)
        ageContainerView.addSubview(ageTextField)
        
        childrenHeaderStack.addArrangedSubview(childrenLabel)
        childrenHeaderStack.addArrangedSubview(addChildButton)
        
        [titleLabel, nameContainerView, ageContainerView, childrenHeaderStack,
         childrenStackView, clearButton].forEach {
            contentView.addSubview($0)
        }
        
        childrenStackView.axis = .vertical
        childrenStackView.spacing = 12
        childrenStackView.alignment = .fill
        childrenStackView.distribution = .fill
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            nameContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            nameContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            nameContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: nameContainerView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor, constant: -16),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            nameTextField.leadingAnchor.constraint(equalTo: nameContainerView.leadingAnchor, constant: 16),
            nameTextField.trailingAnchor.constraint(equalTo: nameContainerView.trailingAnchor, constant: -16),
            nameTextField.bottomAnchor.constraint(equalTo: nameContainerView.bottomAnchor, constant: -10),
            
            ageContainerView.topAnchor.constraint(equalTo: nameContainerView.bottomAnchor, constant: 20),
            ageContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ageContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            ageLabel.topAnchor.constraint(equalTo: ageContainerView.topAnchor, constant: 10),
            ageLabel.leadingAnchor.constraint(equalTo: ageContainerView.leadingAnchor, constant: 16),
            ageLabel.trailingAnchor.constraint(equalTo: ageContainerView.trailingAnchor, constant: -16),
            
            ageTextField.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 4),
            ageTextField.leadingAnchor.constraint(equalTo: ageContainerView.leadingAnchor, constant: 16),
            ageTextField.trailingAnchor.constraint(equalTo: ageContainerView.trailingAnchor, constant: -16),
            ageTextField.bottomAnchor.constraint(equalTo: ageContainerView.bottomAnchor, constant: -10),
            
            childrenHeaderStack.topAnchor.constraint(equalTo: ageContainerView.bottomAnchor, constant: 30),
            childrenHeaderStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            childrenHeaderStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            addChildButton.heightAnchor.constraint(equalToConstant: 40),
            addChildButton.widthAnchor.constraint(equalToConstant: 220),
            
            childrenStackView.topAnchor.constraint(equalTo: childrenHeaderStack.bottomAnchor, constant: 20),
            childrenStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            childrenStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            clearButton.topAnchor.constraint(equalTo: childrenStackView.bottomAnchor, constant: 20),
            clearButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            clearButton.heightAnchor.constraint(equalToConstant: 40),
            clearButton.widthAnchor.constraint(equalToConstant: 200),
            clearButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
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
    
    private func setupKeyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyboardHeight = keyboardFrame.height
        
        UIView.animate(withDuration: 0.3) {
            self.scrollView.contentInset.bottom = keyboardHeight + 40
            self.scrollView.verticalScrollIndicatorInsets.bottom = keyboardHeight + 40
        }
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        UIView.animate(withDuration: 0.3) {
            self.scrollView.contentInset.bottom = 0
            self.scrollView.verticalScrollIndicatorInsets.bottom = 0
        }
    }
    
    private func setupGestureRecognizer() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc private func addChildView() {
        guard childList.count < 5 else { return }
        
        let childView = createChildView()
        childrenStackView.addArrangedSubview(childView)
        childList.append(Child(name: "", age: ""))
        
        addChildButton.isHidden = childList.count >= 5
    }
    
    func createChildView() -> UIView {
        let childView = UIView()
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        let nameContainer = UIView()
        nameContainer.backgroundColor = .white
        nameContainer.layer.borderWidth = 1
        nameContainer.layer.borderColor = UIColor.systemGray5.cgColor
        nameContainer.layer.cornerRadius = 4
        nameContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let nameLabel = UILabel()
        nameLabel.text = "Имя"
        nameLabel.textColor = .gray
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let nameField = UITextField()
        nameField.placeholder = "Имя"
        nameField.font = UIFont.systemFont(ofSize: 16)
        nameField.translatesAutoresizingMaskIntoConstraints = false
        
        let ageContainer = UIView()
        ageContainer.backgroundColor = .white
        ageContainer.layer.borderWidth = 1
        ageContainer.layer.borderColor = UIColor.systemGray5.cgColor
        ageContainer.layer.cornerRadius = 4
        ageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let ageLabel = UILabel()
        ageLabel.text = "Возраст"
        ageLabel.textColor = .gray
        ageLabel.font = UIFont.systemFont(ofSize: 14)
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let ageField = UITextField()
        ageField.placeholder = "Возраст"
        ageField.keyboardType = .numberPad
        ageField.font = UIFont.systemFont(ofSize: 16)
        ageField.translatesAutoresizingMaskIntoConstraints = false
        ageField.delegate = self
        
        let removeButton = UIButton(type: .system)
        removeButton.setTitle("Удалить", for: .normal)
        removeButton.setTitleColor(.systemBlue, for: .normal)
        removeButton.translatesAutoresizingMaskIntoConstraints = false
        removeButton.addTarget(self, action: #selector(removeChild(_:)), for: .touchUpInside)
        
        nameContainer.addSubview(nameLabel)
        nameContainer.addSubview(nameField)
        
        ageContainer.addSubview(ageLabel)
        ageContainer.addSubview(ageField)
        
        childView.addSubview(nameContainer)
        childView.addSubview(ageContainer)
        childView.addSubview(removeButton)
        
        NSLayoutConstraint.activate([
            nameContainer.topAnchor.constraint(equalTo: childView.topAnchor),
            nameContainer.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            nameContainer.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -100),
            
            nameLabel.topAnchor.constraint(equalTo: nameContainer.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: nameContainer.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: -16),
            
            nameField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            nameField.leadingAnchor.constraint(equalTo: nameContainer.leadingAnchor, constant: 16),
            nameField.trailingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: -16),
            nameField.bottomAnchor.constraint(equalTo: nameContainer.bottomAnchor, constant: -10),
            
            ageContainer.topAnchor.constraint(equalTo: nameContainer.bottomAnchor, constant: 10),
            ageContainer.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            ageContainer.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -100),
            ageContainer.bottomAnchor.constraint(equalTo: childView.bottomAnchor),
            
            ageLabel.topAnchor.constraint(equalTo: ageContainer.topAnchor, constant: 10),
            ageLabel.leadingAnchor.constraint(equalTo: ageContainer.leadingAnchor, constant: 16),
            ageLabel.trailingAnchor.constraint(equalTo: ageContainer.trailingAnchor, constant: -16),
            
            ageField.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 4),
            ageField.leadingAnchor.constraint(equalTo: ageContainer.leadingAnchor, constant: 16),
            ageField.trailingAnchor.constraint(equalTo: ageContainer.trailingAnchor, constant: -16),
            ageField.bottomAnchor.constraint(equalTo: ageContainer.bottomAnchor, constant: -10),
            
            removeButton.topAnchor.constraint(equalTo: childView.topAnchor, constant: 10),
            removeButton.leadingAnchor.constraint(equalTo: nameContainer.trailingAnchor, constant: 10),
            removeButton.trailingAnchor.constraint(equalTo: childView.trailingAnchor)
        ])
        
        return childView
    }
    
    @objc private func removeChild(_ sender: UIButton) {
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
    
    @objc private func showClearAlert() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Сбросить данные", style: .destructive, handler: { _ in
            self.clearData()
        }))
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
        present(alert, animated: true)
    }
    
    private func clearData() {
        nameTextField.text = ""
        ageTextField.text = ""
        
        childrenStackView.arrangedSubviews.forEach {
            childrenStackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        childList.removeAll()
        addChildButton.isHidden = false
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
