//
//  Starship.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

struct Starship: Codable {
    var name: String
    var model: String
    var length: String
    var hyperdrive_rating: String
    var starship_class: String
    
    static var death_star: Starship? {
        Starship.fromJSON(named: "death_star")
    }
    
    static func fromJSON(named name: String) -> Starship? {
        if let data = Data.fromJSONFile(forName: name) {
            
            let decoder = JSONDecoder()

            do {
                let starship = try decoder.decode(Starship.self, from: data)
                return starship
            } catch {
                print("Could not make starship from data.", error.localizedDescription)
            }
        }
        return nil
    }
}
