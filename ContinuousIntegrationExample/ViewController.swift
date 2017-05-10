//
//  ViewController.swift
//  ContinuousIntegrationExample
//
//  Created by Vladimir Zivanov on 5/9/17.
//  Copyright © 2017 Vladimir Zivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var invertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.layer.borderColor = UIColor.darkGray.cgColor
        inputTextField.layer.borderWidth = 1
        inputTextField.layer.cornerRadius = 5
        inputTextField.setLeftPaddingPoints(10)
        
        
        invertButton.layer.cornerRadius = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapToInvert(_ sender: UIButton) {
        if let text = inputTextField.text{
            updateLabel(text: invertString(text: text))
            inputTextField.text = ""
        }
    }
    
    //Comment added just for testing purpose
    func invertString(text: String) -> String{
        return String(text.characters.reversed())
    }
    
    func updateLabel(text: String){
        messageLabel.text = "Inverse String: \(text)"
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

