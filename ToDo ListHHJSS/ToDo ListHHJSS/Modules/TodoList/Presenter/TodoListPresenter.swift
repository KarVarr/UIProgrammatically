//
//  TodoListPresenter.swift
//  Todo ListHHJSS
//
//  Created by Karen Vardanian on 28.01.2025.
//

import Foundation

protocol TodoListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

final class TodoListPresenter: TodoListPresenterProtocol {
    weak var view: TodoListViewProtocol!
    private let interactor: TodoListInteractorProtocol
    private let router: TodoListRouterProtocol
    
    init(
        interactor: TodoListInteractorProtocol,
        router: TodoListRouterProtocol
    ) {
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        <#code#>
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        <#code#>
    }
}
