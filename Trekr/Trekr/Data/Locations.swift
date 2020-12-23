//
//  Locations.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places.first ?? Location(id: 0, name: "", country: "", description: "", more: "", latitude: 0, longitude: 0, heroPicture: "", pictures: [], advisory: "")
    }
    
    init() {
        guard let url = Bundle.main.url(forResource: "locations", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let locations = try? JSONDecoder().decode([Location].self, from: data) else {
            places = []
            return
        }
        places = locations
    }
}
