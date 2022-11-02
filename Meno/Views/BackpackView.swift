//
//  BagButton.swift
//  Meno
//
//  Created by Giulio on 31/10/22.
//

import SwiftUI
import CoreLocation

struct BackpackView: View {
    
    @Binding var bagpacks: [BagPack]
    
    var body: some View {
        
        VStack {
            
//            List {
                
                ForEach(bagpacks, id: \.self) { bagPack in
                    
                    NavigationLink(destination: ItemsList(bagPack: bagPack)) {
                        
                        VStack {
                            
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
                        
                            Text("\(bagPack.items.count) Items")
                            
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.gray, lineWidth: 1)
                        )
                        
                    }
                    
                }
//            }.listStyle(.plain)
             
        }
        
    }
}

struct BackpackView_Previews: PreviewProvider {
    static var previews: some View {
        
        BackpackView(bagpacks: .constant([BagPack(capacity: .L20), BagPack(capacity: .L40)])
            )

    }
}
