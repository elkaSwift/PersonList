//
//  Person.swift
//  PersonList
//
//  Created by Елисей Мищенко on 29.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let namesAndSurnames = [
        "John Smith", "Aaron Dow", "Tim Isaacson", "Ted Pennyworth",
        "Steven Jankin", "Sharon Butler", "Nicola Black",
        "Allan Robertson", "Bruce Murphy", "Carl Williams"
    ]
    
    let emails = [
        "john.smith@mail.ru", "aaron.dow@mail.ru", "tim.isaacson@mail.ru",
        "ted.pennyworth@mail.ru", "steven.jankin@mail.ru", "sharon.butler@mail.ru",
        "nicola.black@mail.ru", "allan.robertson@mail.ru", "bruce.murphy@mail.ru",
        "carl.williams@mail.ru"
    ]
    
    let phones = [
        "79641340347", "74668389182", "88235639184", "79245168291",
        "86530281571", "89873451630", "88630981301", "70092371891",
        "78256108719", "80981305191"
    ]
    
    private init() {}
}
