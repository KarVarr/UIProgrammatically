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
        let todoDetailViewController = TodoDetailViewController(task: task)
        view.navigationController?.pushViewController(todoDetailViewController, animated: true)
    }
}


extension TodoListRouter {
    static func createModule() -> UIViewController {
        let view = TodoListViewController()
        let interactor = TodoListInteractor()
        let presenter = TodoListPresenter()
        let router = TodoListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}
