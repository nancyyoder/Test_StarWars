//
//  Person.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

struct Person: Codable {
    var name: String
    var eye_color: String
    var hair_color: String
    var skin_color: String
    var birth_year: String
    
    
    static var luke: Person? {
        Person.fromJSON(named: "luke")
    }
    
    static var darth_vader: Person? {
        Person.fromJSON(named: "darth_vader")
    }
    
    static func fromJSON(named name: String) -> Person? {
        if let data = Data.fromJSONFile(forName: name) {
            
            let decoder = JSONDecoder()
            do {
                let person = try decoder.decode(Person.self, from: data)
                return person
            } catch {
                print("Could not make person from data.", error.localizedDescription)
            }
        }
        return nil
    }
}
