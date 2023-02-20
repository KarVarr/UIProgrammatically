//
//  ImageController.swift
//  ImageFileManage
//
//  Created by Karen Vardanian on 20.02.2023.
//

import UIKit


class ImageController: UIViewController {
   
    let imageName: String
    
    internal init(imageName: String) {
        self.imageName = imageName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.translatesAutoresizingMaskIntoConstraints = false 
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.center = view.center
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        title = "Images"
        
//        let backButton = UIButton(type: .custom)
//        backButton.setImage(UIImage(systemName: "arrowshape.backward"), for: .normal)
//        backButton.setTitle("", for: .normal)
//        backButton.setTitleColor(.green, for: .normal)
//        backButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: backButton)
        
    }
    
//    @objc func backAction () {
//        print("back")
//    }
//    
    
}
