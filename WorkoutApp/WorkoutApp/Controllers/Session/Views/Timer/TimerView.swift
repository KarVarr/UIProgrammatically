//
//  TimerView.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 06.02.2023.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 0.7)
        return view
    }()
    
}


extension TimerView {
    override func setupViews() {
        super.setupViews()
        
        setupViews(progressView)
    }
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor,constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
            
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
