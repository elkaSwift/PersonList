//
//  PesonListViewController.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    private var personList = DataManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = personList.namesAndSurnames[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personPhone = personList.phones[indexPath.row]
        let personEmail = personList.emails[indexPath.row]
        let personNameAndSurname = personList.namesAndSurnames[indexPath.row]
        personDetailsVC.phone = personPhone
        personDetailsVC.email = personEmail
        personDetailsVC.navigationItem.title = personNameAndSurname
        
    }
    

}
