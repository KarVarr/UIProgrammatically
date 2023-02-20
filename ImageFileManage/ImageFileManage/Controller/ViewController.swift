//
//  ViewController.swift
//  ImageFileManage
//
//  Created by Karen Vardanian on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {
 
    let table = ImageTableView()
    
    
    var imageArray = [String]()
    
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
        
        title = "Image File Manage"
        
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
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("img") {
                imageArray.append(item)
            }
        }
    }
}


//MARK: - tableView settings
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = imageArray[indexPath.row]
        cell.selectionStyle = .none
      //self.navigationController?.pushViewController(imageView, animated: true)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let imageName = imageArray[indexPath.row]
        let imageView = ImageController(imageName: imageName)
        
        self.present(imageView, animated: true)
    }
    
}

