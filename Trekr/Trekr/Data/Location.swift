//
//  Location.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let pictures: [String]
    let advisory: String
}
