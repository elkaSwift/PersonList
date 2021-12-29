//
//  PesonListViewController.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person]!


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = ("\(person.name) \(person.surname)")

        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        personDetailsVC.person = person
        personDetailsVC.navigationItem.title = ("\(person.name) \(person.surname)")
    }
}


