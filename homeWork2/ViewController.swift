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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        singUpButton.layer.cornerRadius = 12
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

