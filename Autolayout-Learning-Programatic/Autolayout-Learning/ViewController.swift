//
//  ViewController.swift
//  Autolayout-Learning
//
//  Created by Ming Wei Tee on 23/1/2023.
//

import UIKit

class ViewController: UIViewController {

    private let label = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 44))
    private let button = UIButton()
    private let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureViews()
    }

    func addSubviews() {
        [label, button, textField]
            .forEach { view.addSubview($0) }
    }

    func configureConstraints() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.leftAnchor.constraint(equalTo: view.leftAnchor),
            label.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }

    func configureViews() {
        label.text = "Welcome to iOS Learning series"
        button.setTitle("Update label", for: .normal)
        textField.placeholder = "New text"
    }
}

