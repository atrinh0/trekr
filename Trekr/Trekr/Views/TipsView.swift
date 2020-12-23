//
//  TipsView.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TipsView(tips: Tips().tips)
        }
    }
}
