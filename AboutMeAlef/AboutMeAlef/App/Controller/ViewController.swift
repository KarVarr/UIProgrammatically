//
//  ViewController.swift
//  AboutMeAlef
//
//  Created by Karen Vardanian on 01.03.2025.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //labels
    let titleLabel = CustomLabelView()
    let nameLabel = CustomLabelView()
    let ageLabel = CustomLabelView()
    let childrenLabel = CustomLabelView()
    //TextFields
    let nameTextField = CustomTextField()
    let ageTextField = CustomTextField()
    //UIViews
    let nameContainerView = CustomUIView()
    let ageContainerView = CustomUIView()
    let contentView = CustomUIView()
    //Buttons
    let addChildButton = CustomButtonView()
    let clearButton = CustomButtonView()
    //Stacks
    let childrenHeaderStack = CustomStackView()
    let childrenStackView = CustomStackView()
    
    
    let scrollView = UIScrollView()
    
    var childList: [Child] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureStack()
        configureLabels()
        configureButtons()
        configureUIView()
        configureTextField()
        setupLayout()
        setupGestureRecognizer()
        setupKeyboardObservers()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
