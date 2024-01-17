//
//  CustomAlert.swift
//  HM15
//
//  Created by Evgeny Sakun on 17.01.24.
//

import Foundation

import UIKit

class CustomAlertView: UIView {
    
 
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(self,
                         action: #selector(cancelButtonTapped),
                         for: .touchUpInside)
        return button
    }()
    
    private let confirmButton: UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.green, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(
            self,
            action: #selector(confirmButtonTapped),
            for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    
    private func setupUI() {
        backgroundColor = .systemGray4
        layer.cornerRadius = 10
        layer.masksToBounds = true
        
        addSubview(titleLabel)
        addSubview(cancelButton)
        addSubview(confirmButton)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            cancelButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cancelButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
            confirmButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            confirmButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            confirmButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    
    func setTitle(_ title: String) {
        titleLabel.text = title
    }
    
    func setCancelButtonTitle(_ title: String) {
        cancelButton.setTitle(title, for: .normal)
    }
    
    func setConfirmButtonTitle(_ title: String) {
        confirmButton.setTitle(title, for: .normal)
    }
    
    @objc private func cancelButtonTapped() {
        print("Cancel button tapped")
    }
    
    @objc private func confirmButtonTapped() {
        print("Confirm button tapped")
    }
}

