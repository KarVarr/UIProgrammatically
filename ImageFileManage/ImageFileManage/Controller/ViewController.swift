//
//  ViewController.swift
//  ImageFileManage
//
//  Created by Karen Vardanian on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {
 
    let table = ImageTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        
        addSubview()
        layout()
        setting()
        
    }

}

//MARK: - settings
extension ViewController {
    func addSubview () {
        view.addSubview(table.tableView)
    }
    
    func layout () {
        //table.tableView.frame = view.bounds
        NSLayoutConstraint.activate([
            table.tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            table.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setting () {
        table.tableView.delegate = self
        table.tableView.dataSource = self
    }
}


//MARK: - tableView settings
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}

