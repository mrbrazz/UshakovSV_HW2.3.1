//
//  WelcomeViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 14.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    var login: String?
    
    @IBOutlet weak var welcomeLable: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {
            return
        }
        welcomeLable.text = "Welcome, \(login)! "
    }
    
}
