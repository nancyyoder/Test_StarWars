//
//  ContentView.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if let luke = Person.luke{
            Text("Hello, \(luke.name)!")
        } else {
            Text("No person found.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
