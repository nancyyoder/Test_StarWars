//
//  Data+.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

extension Data {
    static func fromJSONFile(forName name: String) -> Data? {
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
}
