//
//  WelcomeViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 14.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var login = ""
    
    let firstColor = UIColor(red: 40/255, green: 50/255, blue: 255/255, alpha: 1)
    let secondColor = UIColor(red: 220/255, green: 50/255, blue: 140/255, alpha: 1)
    
    // MARK: - IB Outlet
    @IBOutlet weak var welcomeLable: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    // MARK: - Private Properties
    private let userInfo = UserProfile.getUserProfile()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        welcomeLable.text = self.login
        welcomeLable.text = "Привет, \(login)! "
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
