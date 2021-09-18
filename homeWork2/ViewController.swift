//
//  ViewController.swift
//  homeWork2
//
//  Created by Амиргали Туралинов on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var birthdayTF: UITextField!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var singUpButton: UIButton!
    
    var dateFormate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTF.layer.borderColor = UIColor(red: 0.72, green: 0.72, blue: 0.74, alpha: 1).cgColor
        surnameTF.layer.borderColor = UIColor(red: 0.72, green: 0.72, blue: 0.74, alpha: 1).cgColor
        birthdayTF.layer.borderColor = UIColor(red: 0.72, green: 0.72, blue: 0.74, alpha: 1).cgColor
        loginTF.layer.borderColor = UIColor(red: 0.72, green: 0.72, blue: 0.74, alpha: 1).cgColor
        passwordTF.layer.borderColor = UIColor(red: 0.72, green: 0.72, blue: 0.74, alpha: 1).cgColor
        
        nameTF.layer.cornerRadius = 12
        surnameTF.layer.cornerRadius = 12
        birthdayTF.layer.cornerRadius = 12
        loginTF.layer.cornerRadius = 12
        passwordTF.layer.cornerRadius = 12
        singUpButton.layer.cornerRadius = 12
        
        nameTF.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        surnameTF.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        birthdayTF.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        loginTF.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        passwordTF.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        
        birthdayTF.keyboardType = .decimalPad
    }
   
    @IBAction func singUp(_ sender: Any) {
        
        guard let name = nameTF.text, let surname = surnameTF.text, let birthday = birthdayTF.text, let login = loginTF.text, let password = passwordTF.text else { return }
        
        let condition: Bool = !name.isEmpty && !surname.isEmpty && !birthday.isEmpty && !login.isEmpty && !password.isEmpty
        singUpButton.backgroundColor = condition ? .green : .red
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
    
}

