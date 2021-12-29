//
//  PersonalListViewController.swift
//  PersonalList
//
//  Created by Владислав on 28.12.2021.
//

import UIKit

class PersonalListViewController: UITableViewController {
    
    var person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataManager.shared.values = person
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = person[indexPath.row].fullname
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = person[indexPath.row]
        performSegue(withIdentifier: "person", sender: person)
    }
    

    
    //MARK: - Navigaion
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "person" {
            guard let personVC = segue.destination as? PersonViewController else { return }
            personVC.person = sender as? Person
            
            
        }
    }
}


