//
//  DetailView.swift
//  SolarSystem
//
//  Created by Carmen Chiu on 7/6/22.
//

import SwiftUI

struct DetailView: View {
    
   @Binding var planet: Planet
    
    var body: some View {
        
        ZStack{
            Image("galaxy")
                .resizable()
                .frame(maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
           
            VStack {
                VStack(alignment: .leading, spacing: 25) {
                    Text(planet.planetName)
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 20)
                    
                    Image(planet.imageName)
                        .resizable()
                    
                    
                    Text("Maximum Distance From Sun: \(String(format: "%.1f", planet.millionKMsFromSun)) ^6km")
                        .offset(x: 20)
                    Text("Day length in Earth Days: \(String(format: "%.1f", planet.dayLength)) Days")
                        .offset(x: 20)
                    Text("Planet Diameter: \(planet.diameter)")
                        .offset(x: 20)
                }
                Spacer()
            }.padding()
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(planet: .constant(Planet(planetName: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMsFromSun: 57.9, orderNumber: 1)) )
            .preferredColorScheme(.dark)
    }
}
