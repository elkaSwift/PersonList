//
//  Person.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import Foundation



class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Elisei", "Polina", "Misha",
        "Ania", "Julia", "Sergei",
        "Igor", "Katya", "Andrey", "Lera"
    ]
    
    let surnames = [
        "Mishchenko", "Smith", "Dow",
        "Isaacson", "Black", "Robertson",
        "Jankin", "Williams", "Murphy", "Butler"
    ]
    
    let emails = [
        "qqqq@mail.ru", "wwww@mail.ru", "eeee@mail.ru",
        "rrrr@mail.ru", "tttt@mail.ru", "mmmm@mail.ru",
        "ssss@mail.ru", "zzzz@mail.ru", "cccc@mail.ru",
        "kkkk@mail.ru"
    ]
    
    let phones = [
        "79641340347", "74668389182", "88235639184", "79245168291",
        "86530281571", "89873451630", "88630981301", "70092371891",
        "78256108719", "80981305191"
    ]
    
    private init() {}
}
