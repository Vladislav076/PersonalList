//
//  Person.swift
//  PersonalList
//
//  Created by Владислав on 28.12.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        [
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails()),
            Person(name: DataManager.shared.randomName(),
                   surname: DataManager.shared.randomSurname(),
                   phone: DataManager.shared.randomPhone(),
                   email: DataManager.shared.randomEmails())
        ]
    }
}




