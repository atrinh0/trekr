//
//  Tip.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
