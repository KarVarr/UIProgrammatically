//
//  TodoListCell.swift
//  ToDo ListHHJSS
//
//  Created by Karen Vardanian on 29.01.2025.
//

import UIKit

class TodoListCell: UITableViewCell {
    let checkBoxImageView = CustomImageView()
    let titleLabel = CustomLabel()
    let subtitleLabel = CustomLabel()
    let dateLabel = CustomLabel()
    let stackViewVertical = CustomStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        setupLabels()
        setupImageView()
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(checkBoxImageView.customImage)
        contentView.addSubview(stackViewVertical.stackView)
        contentView.addSubview(dateLabel.label)
        
        stackViewVertical.stackView.addArrangedSubview(titleLabel.label)
        stackViewVertical.stackView.addArrangedSubview(subtitleLabel.label)
        backgroundColor = .black
    }
    
    private func setupLabels() {
        titleLabel.label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.label.numberOfLines = 1
        
        subtitleLabel.label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        subtitleLabel.label.textColor = .gray
        subtitleLabel.label.numberOfLines = 2
        
        dateLabel.label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        dateLabel.label.textColor = .lightGray
    }
    
    private func setupImageView() {
        
    }
    
    private func setupStackView() {
        stackViewVertical.stackView.axis = .vertical
        stackViewVertical.stackView.spacing = 4
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            checkBoxImageView.customImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            checkBoxImageView.customImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            checkBoxImageView.customImage.widthAnchor.constraint(equalToConstant: 24),
            checkBoxImageView.customImage.heightAnchor.constraint(equalToConstant: 24),
            
            stackViewVertical.stackView.leadingAnchor.constraint(equalTo: checkBoxImageView.customImage.trailingAnchor, constant: 12),
            stackViewVertical.stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            stackViewVertical.stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            dateLabel.label.leadingAnchor.constraint(equalTo: stackViewVertical.stackView.leadingAnchor),
            dateLabel.label.topAnchor.constraint(equalTo: stackViewVertical.stackView.bottomAnchor, constant: 4),
            dateLabel.label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    func configure(with task: Task) {
        titleLabel.label.text = task.title
        subtitleLabel.label.text = task.subtitle ?? ""
        dateLabel.label.text = formatDate(task.date)
        
        let imageName = task.isDone ? "checkmark.circle.fill" : "circle"
        checkBoxImageView.customImage.image = UIImage(systemName: imageName)
        checkBoxImageView.customImage.tintColor = task.isDone ? .yellow : .gray
        
        titleLabel.label.textColor = task.isDone ? .gray : .white
    }
    
    private func formatDate(_ date: Date?) -> String {
        guard let date = date else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"
        return formatter.string(from: date)
    }
}
