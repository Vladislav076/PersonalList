//
//  PersonInfoViewController.swift
//  PersonalList
//
//  Created by Владислав on 29.12.2021.
//

import UIKit

class PersonInfoViewController: UITableViewController {
    
   
    var person : [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        person = DataManager.shared.values
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return person.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 44))
        returnedView.backgroundColor = .systemGray5
        let label = UILabel(frame: CGRect(x: 20, y: 0, width: view.frame.size.width, height: 30))
        label.text = person[section].fullname
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        returnedView.addSubview(label)
        
        return returnedView
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.text = person[indexPath.section].phone
            content.image = UIImage(named: "phone")
            cell.contentConfiguration = content
        } else {
            var content = cell.defaultContentConfiguration()
            content.text = person[indexPath.section].email
            content.image = UIImage(named: "email")
            cell.contentConfiguration = content
        }
        return cell
        
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
    
}
