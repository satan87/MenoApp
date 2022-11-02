//
//  BagButton.swift
//  Meno
//
//  Created by Giulio on 31/10/22.
//

import SwiftUI
import CoreLocation

struct BackpackView: View {
    
    @Binding var trip: Trip
    
    var body: some View {
        
        VStack {
            
            ForEach(trip.bagPacks, id: \.self) { bagPack in
                
                NavigationLink(destination: ItemsList(bagPack: bagPack)) {
                    
                    
                    HStack {
                        
                        Image("\(bagPack.capacity)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                        Spacer()
                        
                        Text("\(bagPack.capacity.rawValue) Backpack")
                            .font(.title)
                        
                        Image(systemName: "chevron.right")
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.gray, lineWidth: 1)
                    )
                    
                }
                
            }
             
        }
        
    }
}

struct BackpackView_Previews: PreviewProvider {
    static var previews: some View {
        
        BackpackView(trip: .constant(
                            Trip(icon: "tram",
                                 destination: "Florence",
                                 departureDate: Date.distantPast,
                                 returnDate: Date.distantFuture,
                                 bagPacks: [BagPack(capacity: .L15), BagPack(capacity: .L40)],
                                 isArchived: false,
                                 coordinate: CLLocationCoordinate2D(latitude: 43.769, longitude: 11.255),
                                 image: Image("Firenze")
                                ))
            )

    }
}
