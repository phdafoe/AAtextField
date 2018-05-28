//
//  ViewController.swift
//  AA_TextField
//
//  Created by Andres Felipe Ocampo Eljaiesk on 12/5/18.
//  Copyright © 2018 icologic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: HoshiTextField!
    @IBOutlet weak var myPass: HoshiTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.placeholder = "Usuario"
        myTextField.placeholderColor = .darkGray
        myTextField.borderInactiveColor = .lightGray
        myTextField.borderActiveColor = .lightGray
        
        myPass.placeholder = "Contraseña"
        myPass.placeholderColor = .darkGray
        myPass.borderInactiveColor = .lightGray
        myPass.borderActiveColor = .lightGray
        myPass.isSecureTextEntry = true
    }
    
}



