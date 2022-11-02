//
//  ItemsList.swift
//  Meno
//
//  Created by Giulio Ammendola on 25/10/2022.
//

//https://www.youtube.com/watch?v=MxuenEwKp28

import SwiftUI
import CoreLocation


struct ItemsList: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var bagPack: BagPack
    
    var body: some View {
        
        VStack{
        

            Image("\(bagPack.capacity.rawValue)")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            
            List {
                
                ForEach(ItemList.allCases, id: \.self) { item in
                    
                    HStack {
                        
                        Image(systemName: bagPack.items.contains(item.item)
                              ? "checkmark.circle"
                              : "circle")
                        
                        Text(item.item.name)
                        
                        
                    }.onTapGesture {
                        
                        print("HERE")
                        print(bagPack)
                        
                        if bagPack.items.contains(item.item) {
                            bagPack.items.removeAll(where: {$0 == item.item})
                        } else {
                            bagPack.items.append(item.item)
                        }
                        
                        print(bagPack)

                        
                    }
                    
                    
                }

            }

        }
        .navigationTitle("Your Items for your \(bagPack.capacity.rawValue) capacity")
        .toolbar {
            ToolbarItem {
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Done")
                })
                
            }
        }
        

    }
}


struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList(bagPack: BagPack(capacity: .L20))
    }
}
