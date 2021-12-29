//
//  PersonDetailsViewController.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phonesLabel: UILabel!
    @IBOutlet weak var emailsLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phonesLabel.text = "phone: \(person.phone)"
        emailsLabel.text = "email: \(person.email)"
    }
}
