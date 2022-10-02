//
//  ViewController.swift
//  LoginApp
//
//  Created by Андрей Абакумов on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "Admin"
    let password = "Admin"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = "Welcome \(userNameTF.text ?? "")"
        
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButton() {
        if userNameTF.text == userName && passwordTF.text == password {
            self.performSegue(withIdentifier: "Login", sender: self)
        } else {
            alert(title: "Login failed", message: "Please, enter correct User Name and Password")
        }
    }
    
    @IBAction func forgotUserNameButton() {
        alert(title: "Oops!", message: "Your name is Admin")
    }
    
    @IBAction func forgotPasswordButton() {
        alert(title: "Oops!", message: "Your password is Admin")
    }
    
    private func alert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true, completion: nil)
    }
}

