//
//  DataManager.swift
//  PersonalList
//
//  Created by Владислав on 28.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    private var names = [
        "Vladislav", "Steve", "Tim", "Jeff",
        "Bill", "Elon", "Britney",
        "Michael", "Bruce", "Carl"
    ]
    
    private var surnames = [
        "Denisov", "Jobs", "Cook", "Bezos",
        "Gates", "Musk", "Spears", "Jackson",
        "Lee", "Jung"
    ]
    
    private var emails = [
        "aaaa@gmail.com", "bbbb@gmail.com", "cccc@gmail.com",
        "dddd@gmail.com", "eeee@gmail.com", "ffff@gmail.com",
        "gggg@gmail.com", "hhhh@gmail.com", "iiii@gmail.com",
        "jjjj@gmail.com"
    ]
    
    private var phones = [
        "453334532", "175834573", "946433156",
        "347685944", "094782375", "656576549",
        "109102391", "923473828", "543892042",
        "666666667",
    ]
    
    func randomName() -> String {
        var randomName = ""
        if !names.isEmpty {
        names = names.shuffled()
        randomName = names.first ?? ""
        names.removeFirst()
        }
        return randomName
        
    }
    
   public var values: [Person] = []
    
    func randomSurname() -> String {
        var randomSurname = ""
        if !surnames.isEmpty {
        surnames = surnames.shuffled()
        randomSurname = surnames.first ?? ""
        surnames.removeFirst()
        }
        return randomSurname
    }
    
    func randomPhone() -> String {
        var randomPhone = ""
        if !phones.isEmpty {
        phones = phones.shuffled()
        randomPhone = phones.first ?? ""
        phones.removeFirst()
        }
        return randomPhone
    }
    
    func randomEmails() -> String {
        var randomEmails = ""
        if !emails.isEmpty {
        emails = emails.shuffled()
        randomEmails = emails.first ?? ""
        emails.removeFirst()
        }
        return randomEmails
    }
    
    private init() {}
}
