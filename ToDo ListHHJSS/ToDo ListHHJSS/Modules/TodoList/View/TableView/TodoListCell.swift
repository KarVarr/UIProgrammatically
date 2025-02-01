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
    
    var toggleCompletion: (() -> Void)?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        setupLabels()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckBox))
        checkBoxImageView.customImage.isUserInteractionEnabled = true
        checkBoxImageView.customImage.addGestureRecognizer(tapGesture)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.label.attributedText = nil
        subtitleLabel.label.text = nil
        dateLabel.label.text = nil
        checkBoxImageView.customImage.image = nil
    }
    
    @objc private func didTapCheckBox() {
        toggleCompletion?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(checkBoxImageView.customImage)
        contentView.addSubview(titleLabel.label)
        contentView.addSubview(subtitleLabel.label)
        contentView.addSubview(dateLabel.label)
        backgroundColor = .black
    }
    
    private func setupLabels() {
        titleLabel.label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.label.numberOfLines = 1
        
        subtitleLabel.label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        subtitleLabel.label.numberOfLines = 2
        
        dateLabel.label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        dateLabel.label.textColor = .lightGray
    }
    
    private func setupConstraints() {
        checkBoxImageView.customImage.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.label.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.label.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.label.translatesAutoresizingMaskIntoConstraints = false
        
        
        let constraints = [
            checkBoxImageView.customImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            checkBoxImageView.customImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            checkBoxImageView.customImage.widthAnchor.constraint(equalToConstant: 24),
            checkBoxImageView.customImage.heightAnchor.constraint(equalToConstant: 24),
            
            titleLabel.label.leadingAnchor.constraint(equalTo: checkBoxImageView.customImage.trailingAnchor, constant: 12),
            titleLabel.label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titleLabel.label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            subtitleLabel.label.leadingAnchor.constraint(equalTo: checkBoxImageView.customImage.trailingAnchor, constant: 12),
            subtitleLabel.label.topAnchor.constraint(equalTo: titleLabel.label.bottomAnchor, constant: 4),
            subtitleLabel.label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            dateLabel.label.leadingAnchor.constraint(equalTo: checkBoxImageView.customImage.trailingAnchor, constant: 12),
            dateLabel.label.topAnchor.constraint(equalTo: subtitleLabel.label.bottomAnchor, constant: 4),
            dateLabel.label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ]
        
        let bottomConstraint = dateLabel.label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        bottomConstraint.priority = .defaultHigh
        
        NSLayoutConstraint.activate(constraints)
        NSLayoutConstraint.activate([bottomConstraint])
    }
    
    func configure(with task: TaskEntity) {
        let attributeString = NSMutableAttributedString(string: task.todo ?? "")
        if task.completed {
            attributeString.addAttribute(.strikethroughStyle, value: 1, range: NSMakeRange(0, attributeString.length))
        }
        
        titleLabel.label.attributedText = attributeString
        subtitleLabel.label.text = task.subtitle ?? ""
        dateLabel.label.text = formatDate(task.date)
        
        let imageName = task.completed ? "Done" : "NotDone"
        checkBoxImageView.customImage.image = UIImage(named: imageName)
        checkBoxImageView.customImage.tintColor = task.completed ? .yellow : .gray
        
        titleLabel.label.textColor = task.completed ? .gray : .white
        subtitleLabel.label.textColor = task.completed ? .gray : .white
    }
    
    private func formatDate(_ date: Date?) -> String {
        guard let date = date else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"
        return formatter.string(from: date)
    }
}
