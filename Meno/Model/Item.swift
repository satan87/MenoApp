//
//  Item.swift
//  Meno
//
//  Created by Nicolas Savoini on 2022-11-01.
//

import Foundation


struct Item: CustomStringConvertible, Equatable, Hashable {
    
    let name: String
    let category: ItemCategory
    
    var description: String {
        "\(name) - Category: \(category.rawValue)"
    }
}


enum ItemCategory: String {
    
    case Accessory = "Accessory"
    case Clothes = "Clothes"
    case Documents = "Documents"
    case Health = "Health"
    case Housing = "Housing"
    case Makeup = "Makeup"
    case Others = "Others"
}


enum ItemList: CaseIterable {
    
    case Tent
    case SleepingBag
    case BearSpray
    case BatteryPack
    case Socks
    case Shirts
    case Jacket
    case Toothbrush
    case Toothpaste
    case Soap
    case Sunglasses
    case Watch
    case GoPro
    case Earphones
    
    
    var item: Item {
        switch self {
            case .Tent:
                return Item(name: "Tent", category: .Housing)
            case .SleepingBag:
                return Item(name: "Sleeping bag", category: .Housing)
            case .BearSpray:
                return Item(name: "Bear spray", category: .Health)
            case .BatteryPack:
                return Item(name: "Battery pack", category: .Accessory)
            case .Socks:
                return Item(name: "Socks", category: .Clothes)
            case .Shirts:
                return Item(name: "Shirts", category: .Clothes)
            case .Jacket:
                return Item(name: "Jacket", category: .Clothes)
            case .Toothbrush:
                return Item(name: "Toothbrush", category: .Health)
            case .Toothpaste:
                return Item(name: "Toothpaste", category: .Health)
            case .Soap:
                return Item(name: "Soap", category: .Health)
            case .Sunglasses:
                return Item(name: "Sunglasses", category: .Accessory)
            case .Watch:
                return Item(name: "Watch", category: .Accessory)
            case .GoPro:
                return Item(name: "GoPro", category: .Accessory)
            case .Earphones:
                return Item(name: "Earphones", category: .Accessory)
        }
    }
 
}



