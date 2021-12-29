//
//  PersonViewController.swift
//  PersonalList
//
//  Created by Владислав on 29.12.2021.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone - \(person.phone)"
        emailLabel.text = "Email - \(person.email)"
        navigationItem.title = person.fullname
    
    }


}
