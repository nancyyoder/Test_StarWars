//
//  Person.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

struct Person: Codable {
    var name: String
    
    static var luke: Person{
        func readLocalFile(forName name: String) -> Data? {
            do {
                if let bundlePath = Bundle.main.path(forResource: name,
                                                     ofType: "json"),
                    let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                    return jsonData
                }
            } catch {
                print("Could not read json file.", error)
            }
            
            return nil
        }
        
        if let data = readLocalFile(forName: "luke") {
            print("we got data")
            
            let decoder = JSONDecoder()

            do {
                let luke = try decoder.decode(Person.self, from: data)
                print("Here's Luke's Name: ", luke.name)
                return luke
            } catch {
                print("Could not make person from data.", error.localizedDescription)
            }
        }
        
        
        return Person(name: "Could not parse file.")
    }
//    var height: Int
//    var mass: Int
}
