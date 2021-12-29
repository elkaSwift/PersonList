//
//  PersonListDetailsViewController.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import UIKit

class PersonListDetailsViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let name = persons[section].name
        let surname = persons[section].surname
        return "\(name) \(surname)"
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = persons[indexPath.section]

        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = person.phone
        } else {
            content.text = person.email
        }

        cell.contentConfiguration = content

        return cell
    }

}

