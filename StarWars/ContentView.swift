//
//  ContentView.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, \(Person.luke.name)!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
