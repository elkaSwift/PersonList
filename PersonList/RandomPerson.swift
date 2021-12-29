//
//  RandomPerson.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import Foundation

struct Person{
    let name: String
    let surname: String
    let phone: String
    let email: String
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        for _ in 0..<DataManager.shared.names.count{
            let person = Person(name: "\(DataManager.shared.names.randomElement() ?? "")",
                                surname: "\(DataManager.shared.surnames.randomElement() ?? "")",
                                phone: "\(DataManager.shared.phones.randomElement() ?? "")",
                                email: "\(DataManager.shared.emails.randomElement() ?? "")")
            persons.append(person)
        }
        return persons
    }
}
