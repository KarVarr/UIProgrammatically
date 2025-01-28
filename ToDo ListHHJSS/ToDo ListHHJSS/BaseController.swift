//
//  BaseController.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        settingView()
        layoutView()
    }
}

@objc extension BaseController {
    func addSubviews() {}
    func settingView() {}
    func layoutView() {}
}

