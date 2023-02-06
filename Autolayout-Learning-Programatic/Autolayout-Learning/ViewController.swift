//
//  ViewController.swift
//  Autolayout-Learning
//
//  Created by Ming Wei Tee on 23/1/2023.
//

import UIKit

class ViewController: UIViewController {

    private let label = UILabel()
    private let button = UIButton()
    private let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureViews()
        configureConstraints()
    }

    func addSubviews() {
        [label, button, textField]
            .forEach { view.addSubview($0) }
    }

    func configureConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
        ])
    }

    func configureViews() {
        label.text = "Welcome to iOS Learning"
        button.setTitle("Update label", for: .normal)
        textField.placeholder = "New text"
    }
}

