//
//  WelcomeViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 14.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlet
    @IBOutlet weak var welcomeLable: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    // MARK: - Private Properties
    private var login = ""
    private let userInfo = UserProfile.getUserProfile()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = self.login
        //      guard let login = self.login else {return}
        welcomeLable.text = "Welcome, \(login)! "
    }
}
