//
//  TodoListViewController.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import UIKit

protocol TodoListViewProtocol: AnyObject {
    
}

class TodoListViewController: BaseController, TodoListViewProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func settingView() {
        title = "Задачи"
        view.backgroundColor = .red
    }

}

