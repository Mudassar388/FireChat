//
//  ViewController.swift
//  FireChat
//
//  Created by Developer on 31/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        subView.convertToHexagon()
        tfName.addPadding(.left(50))
        tfName.layer.borderColor = UIColor.white.cgColor
        tfName.layer.borderWidth = 2
        tfPassword.addPadding(.left(50))
        tfPassword.layer.borderColor = UIColor.white.cgColor
        tfPassword.layer.borderWidth = 2
        tfName.attributedPlaceholder = NSAttributedString(
            string: "User Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
            )
        tfPassword.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
    }
    
}

