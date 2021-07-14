//
//  ViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var remindNameButton: UIButton!
    @IBOutlet weak var remindPasswordButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func remindPasswordAction() {
        showAlert(title: "Your Password", message: "\(password)")
    }
    @IBAction func remindNameAction() {
        showAlert(title: "Your name", message: "\(name)")
    }
    @IBAction func loginButtonAction() {
        if userNameTF.text != name && passwordTF.text != password {
           showAlert(title: "Bad Password or Name", message: "buu")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.login = userNameTF.text
    }
}

// MARK: - Private Method
let name = "Brazz"
let password = "123"

private extension ViewController {
    func showAlert(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true)
        
    }
}

