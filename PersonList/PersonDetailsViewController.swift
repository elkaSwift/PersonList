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
    
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phonesLabel.text = "phone: \(phone ?? "")"
        emailsLabel.text = "email: \(email ?? "")"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
