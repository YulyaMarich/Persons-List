//
//  Person.swift
//  PersonsList
//
//  Created by Julia on 13.10.2021.
//

struct Person {
    var name = ""
    var surname = ""
    var mail = ""
    var phoneNumber = ""
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func createRandomPersons() -> [Person] {
        let date = DataManager()
        let nameArray = date.namesArray.shuffled()
        let surnameArray = date.surnamesArray.shuffled()
        let mailArray = date.mailsArray.shuffled()
        let phoneNumberArray = date.numbersArray.shuffled()
        
        var randomPersons: [Person] = []
        
        for index in 0 ..< nameArray.count {
            let person = Person(name: nameArray[index], surname: surnameArray[index], mail: mailArray[index], phoneNumber: phoneNumberArray[index])
            
            randomPersons.append(person)
        }
      return randomPersons
        }
}
