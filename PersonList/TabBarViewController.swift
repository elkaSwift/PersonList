//
//  TabBarViewController.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    private var persons = Person.getPersons()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         chooseController()
     }
     
     private func chooseController() {
         guard let viewControllers = self.viewControllers else { return }
         for controller in viewControllers {
             if let personsNavigationVC = controller as? UINavigationController {
                 if let contactVC = personsNavigationVC.topViewController as? PersonListDetailsViewController {
                     contactVC.persons = persons
                 } else if let personVC = personsNavigationVC.topViewController as? PersonListViewController {
                     personVC.persons = persons
                 }
             }
         }
     }


}
