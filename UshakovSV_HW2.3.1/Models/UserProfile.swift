//
//  File.swift
//  UshakovSV_HW2.3.1
//
//  Created by Сергей Ушаков on 18.07.2021.
//

import Foundation

struct UserProfile {
    let userInfo: UserInfo
    let personalInfo: PersonalInfo
    
    static func getUserProfile() -> UserProfile {
        UserProfile(userInfo: UserInfo(username: "123", password: "123"),
                    personalInfo:
                        PersonalInfo(name: "Сергей",
                                    lastname: "Ушаков",
                                    birthDay: "03 мая 1987",
                                    gender: "Мужской",
                                    placeOfResidence: "Санкт-Петербург",
                                    familyStatus: "Женат")      
        )
    }
}
