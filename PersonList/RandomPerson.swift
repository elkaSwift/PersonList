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
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}
