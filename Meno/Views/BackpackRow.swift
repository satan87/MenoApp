//
//  BagButton.swift
//  Meno
//
//  Created by Giulio on 31/10/22.
//

import SwiftUI
import CoreLocation

struct BackpackRow: View {
    
    var bag: BagCapacity
    
    var body: some View {
        
        VStack{
            HStack{
                                
                Image("\(bag.rawValue)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                
                Spacer()
                
                Text("\(bag.rawValue)")
                    .font(.title2)
                                
            }
            .padding()

        }

        
    }
}

struct BackpackRow_Previews: PreviewProvider {
    static var previews: some View {
        BackpackRow(bag: .L40)
    }
}

