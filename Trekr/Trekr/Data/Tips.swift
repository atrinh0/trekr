//
//  Tips.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import Foundation

class Tips: ObservableObject {
    let tips: [Tip]

    init() {
        guard let url = Bundle.main.url(forResource: "tips", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let locations = try? JSONDecoder().decode([Tip].self, from: data) else {
            tips = []
            return
        }
        tips = locations
    }
}
