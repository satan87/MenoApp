//
//  BagPack.swift
//  Meno
//
//  Created by Nicolas Savoini on 2022-11-01.
//

import Foundation

struct BagPack {
    
    let capacity: BagCapacity
    var items: [Item]
    
    // This is where you can define a default backpack
    // Although it would be best to create another ENUM with the list
    
    init(capacity: BagCapacity) {
        
        self.capacity = capacity
        
        switch capacity {
                
            case .L15:
                items = [ItemList.Tent.item, ItemList.Toothbrush.item, ItemList.Toothpaste.item]
            case .L20:
                items = [ItemList.Tent.item, ItemList.Toothbrush.item, ItemList.Toothpaste.item, ItemList.Jacket.item]
            case .L30:
                items = [ItemList.Tent.item, ItemList.Toothbrush.item, ItemList.Toothpaste.item, ItemList.Jacket.item, ItemList.Socks.item]
            case .L40:
                items = ItemList.allCases.map(\.item) // We can add all items in a 40L bagpack ;)
        }
        
        
    }
    
}

extension BagPack: Equatable, Hashable {
    
    static func == (lhs: BagPack, rhs: BagPack) -> Bool {
        lhs.capacity == rhs.capacity && lhs.items == rhs.items
    }
    
    
}
