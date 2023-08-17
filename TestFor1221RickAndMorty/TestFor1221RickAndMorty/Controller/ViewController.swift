//
//  ViewController.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let networkManage = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        settingsForNav()
        settings()
        layout()
        
        networkManage.request()
    }
    
   
    
    
    func addViews() {
        
    }
    
    func settingsForNav() {
        title = Helper.Strings.title
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = Helper.Colors.whiteColor
          
    }
    
    func settings() {
        view.backgroundColor = Helper.Colors.mainBlackColor
    }
    
    func layout() {
        
    }
    
    
}

