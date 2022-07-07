//
//  SolarSystemApp.swift
//  SolarSystem
//
//  Created by Carmen Chiu on 7/6/22.
//

import SwiftUI

@main
struct SolarSystemApp: App {
    var body: some Scene {
        WindowGroup {
            PlanetListView()
                .environment(\.colorScheme, .dark)
    }
}
}
