//
//  SignUpViewController.swift
//  FireChat
//
//  Created by Developer on 31/08/2023.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var tfConfirmPass: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        subView.convertToHexagon()
        tfUser.addPadding(.left(50))
        tfUser.layer.borderColor = UIColor.white.cgColor
        tfUser.layer.borderWidth = 2
        tfPassword.addPadding(.left(50))
        tfPassword.layer.borderColor = UIColor.white.cgColor
        tfPassword.layer.borderWidth = 2
        tfConfirmPass.addPadding(.left(50))
        tfConfirmPass.layer.borderColor = UIColor.white.cgColor
        tfConfirmPass.layer.borderWidth = 2
        tfUser.attributedPlaceholder = NSAttributedString(
            string: "User Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
            )
        tfPassword.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tfConfirmPass.attributedPlaceholder = NSAttributedString(
                string: "Confirm Password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
  
    @IBAction func signUpTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
