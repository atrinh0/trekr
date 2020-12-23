//
//  WorldView.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(
                destination: LocationView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 40, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("Locations")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
