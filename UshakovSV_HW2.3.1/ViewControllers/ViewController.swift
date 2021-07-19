//
//  ViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlet
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var remindNameButton: UIButton!
    @IBOutlet weak var remindPasswordButton: UIButton!
    
    // MARK: - Private Properties
    private let userInfo = UserProfile.getUserProfile()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarVC.viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.login = "\(userInfo.personalInfo.name) \(userInfo.personalInfo.lastname)"
            } else if let profileVC = viewController as? ProfileViewController {
                profileVC.birthDay = userInfo.personalInfo.birthDay
                profileVC.familyStatus = userInfo.personalInfo.familyStatus
                profileVC.gender = userInfo.personalInfo.gender
                profileVC.placeOfResidence = userInfo.personalInfo.placeOfResidence
            }
        }
    }
    
    // MARK: - IB Action
    @IBAction func remindPasswordAction() {
        showAlert(title: "Your Password", message: "\(userInfo.userInfo.password)")
    }
    @IBAction func remindNameAction() {
        showAlert(title: "Your name", message: "\(userInfo.userInfo.username)")
    }
    @IBAction func loginButtonAction() {
        if userNameTF.text != userInfo.userInfo.username || passwordTF.text != userInfo.userInfo.password {
            showAlert(title: "Invalid user name or password", message: "Please, enter correct user name and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - Private Methods
private extension ViewController {
    func showAlert(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true)
    }
}

