//
//  ContentView.swift
//  StarWars
//
//  Created by Nancy Yoder on 10/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Star Wars Info").font(.largeTitle)

            if let luke = Person.luke{
                Text("\(luke.name)").font(.largeTitle)
                Text("eye color: \(luke.eye_color)")
                Text("hair color: \(luke.hair_color)")
                Text("skin color: \(luke.skin_color)")
                Text("birth year: \(luke.birth_year)")
            } else {
                Text("Luke SkyWalker Not Found.")
            }
            
            if let darth_vader = Person.darth_vader{
                Text("\(darth_vader.name)").font(.largeTitle)
                Text("eye color: \(darth_vader.eye_color)")
                Text("hair color: \(darth_vader.hair_color)")
                Text("skin color: \(darth_vader.skin_color)")
                Text("birth year: \(darth_vader.birth_year)")
            } else {
                Text("Darth Vader Not Found.")
            }
            
            if let tatooine = Planet.tatooine {
                Text("\(tatooine.name)").font(.largeTitle)
                Text("gravity: \(tatooine.gravity)")
                Text("terrain: \(tatooine.terrain)")
                Text("climate: \(tatooine.climate)")
                Text("diameter: \(tatooine.diameter)")
            } else{
                Text("Planet Tatooine Not Found.")
            }
            
            if let death_star = Starship.death_star {
                Text("\(death_star.name)").font(.largeTitle)
                Text("model: \(death_star.model)")
                Text("length: \(death_star.length)")
                Text("hyperdrive: \(death_star.hyperdrive_rating)")
                Text("class: \(death_star.starship_class)")
            } else{
                Text("Planet Tatooine Not Found.")
            }
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
