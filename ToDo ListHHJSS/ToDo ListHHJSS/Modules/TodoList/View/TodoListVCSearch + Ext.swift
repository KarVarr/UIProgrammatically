//
//  TodoListVCSearch + Ext.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 02.02.2025.
//

import UIKit

extension TodoListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterTasks(searchController.searchBar.text!)
    }
    
    func filterTasks(_ searchText: String) {
        filteredTasks = tasks.filter { task in
            return task.todo?.lowercased().contains(searchText.lowercased()) ?? false
        }
        todoListTableView.reloadData()
    }
}
