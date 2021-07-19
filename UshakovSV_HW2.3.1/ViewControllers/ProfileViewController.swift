//
//  ProfileViewController.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 19.07.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - IB Outlet
    @IBOutlet weak var placeOfResidenceLable: UILabel!
    @IBOutlet weak var birthDayLable: UILabel!
    @IBOutlet weak var genderLable: UILabel!
    @IBOutlet weak var familyStatusLable: UILabel!
    
    // MARK: - Public Properties
    var placeOfResidence = ""
    var birthDay = ""
    var gender = ""
    var familyStatus = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthDayLable.text = self.birthDay
        placeOfResidenceLable.text = self.placeOfResidence
        genderLable.text = self.gender
        familyStatusLable.text = self.familyStatus
    }
}
