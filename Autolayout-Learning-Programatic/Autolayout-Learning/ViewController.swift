//
//  ViewController.swift
//  Autolayout-Learning
//
//  Created by Ming Wei Tee on 23/1/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTouchUpInside(_ sender: Any) {
        label.text = textField.text 
    }

    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

