//
//  PlanetListView.swift
//  SolarSystem
//
//  Created by Carmen Chiu on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Image("galaxy")
                    .resizable()
                    .frame(maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                    .frame(height: 10)
                
                
                List(PlanetDataStore.planets) { planet in
                    
                    NavigationLink {
                        DetailView(planet: .constant(planet))
                        
                    } label: {
                        PlanetLabelView(
                            planetName: planet.planetName,
                            planetImage: planet.imageName,
                            planetOrder: planet.orderNumber)
                    }
                    .navigationTitle("Solar System")
                    .listRowBackground(Color.clear)
                    
                }
            }
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}

struct PlanetLabelView: View {
    let planetName: String
    let planetImage: String
    let planetOrder: Int
    
    var body: some View {
        HStack {
            Image(planetImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 70, alignment: .leading)
            VStack(alignment: .leading) {
                Text(planetName)
                Text("\(planetOrder)")
            }
        }
        .padding()
    }
}

