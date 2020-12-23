//
//  TrekrApp.swift
//  Trekr
//
//  Created by An Trinh on 22/12/20.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    @StateObject var tips = Tips()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    LocationView(location: locations.primary)
                }
                .tabItem {
                    Label("Discover", systemImage: "airplane.circle.fill")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Label("Locations", systemImage: "star.fill")
                }
                
                NavigationView {
                    TipsView(tips: tips.tips)
                }
                .tabItem {
                    Label("Tips", systemImage: "list.bullet")
                }
            }
            .environmentObject(locations)
        }
    }
}
