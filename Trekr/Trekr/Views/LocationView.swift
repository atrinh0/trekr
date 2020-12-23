//
//  LocationView.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import SwiftUI

struct LocationView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            if !location.advisory.isEmpty {
                DisclosureGroup(content: {
                    Text(location.advisory)
                }) {
                    Text("Travel advisories")
                        .bold()
                }
                .padding()
            }
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding([.horizontal])
            
            Text("Pictures")
                .font(.title3)
                .bold()
                .padding(.top)
            
            VStack {
                ForEach(location.pictures, id: \.self) { picture in
                    Image(picture)
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding(.bottom)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationView(location: Locations().places[2])
        }
    }
}
