//
//  ModelData.swift
//  AR App
//
//  Created by MiQan on 09/12/2021.
//

import SwiftUI

struct ItemModel: Identifiable{
    var id = UUID().uuidString
    var image: String
    var title: String
    var price: String
}

var stocks = [
    ItemModel(image: "chair1", title: "Normal Chair", price: "234.000 VND"),
    ItemModel(image: "chair2", title: "Luxury Chair", price: "500.000 VND"),
    ItemModel(image: "chair3", title: "Room Chair", price: "199.000 VND"),
    ItemModel(image: "chair4", title: "Office Chair", price: "499.000 VND"),
    ItemModel(image: "Lamb1", title: "Lamb", price: "99.000 VND"),
    ItemModel(image: "bed1", title: "Bed for Couples", price: "298.000 VND"),
]

var scroll_Tabs = ["Furniture", "Health & Household", "Home & Kitchen", "Luggage", "Fashion"]
