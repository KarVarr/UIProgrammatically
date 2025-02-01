//
//  TodoListRouter.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation
import UIKit

protocol TodoListRouterProtocol: AnyObject {
    func navigateToTodoDetail(from view: UIViewController, with task: Task)
}

final class TodoListRouter: TodoListRouterProtocol {
    func navigateToTodoDetail(from view: UIViewController, with task: Task) {

    }
}


extension TodoListRouter {
    static func createModule() -> UIViewController {
        print("-------createModule() вызван")
        let view = TodoListViewController()
        let interactor = TodoListInteractor()
        let router = TodoListRouter()
        let presenter = TodoListPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
