//
//  Planet.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

struct Planet: Codable {
    var name: String
    var gravity: String
    var terrain: String
    var climate: String
    var diameter: String
    
    static var tatooine: Planet? {
        Planet.fromJSON(named: "tatooine")
    }
    
    static func fromJSON(named name: String) -> Planet? {
        if let data = Data.fromJSONFile(forName: name) {
            
            let decoder = JSONDecoder()

            do {
                let planet = try decoder.decode(Planet.self, from: data)
                return planet
            } catch {
                print("Could not make planet from data.", error.localizedDescription)
            }
        }
        return nil
    }
}
