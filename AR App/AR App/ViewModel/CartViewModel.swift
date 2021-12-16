//
//  CartViewModel.swift
//  AR App
//
//  Created by MiQan on 15/12/2021.
//

import SwiftUI

class CartViewModel: ObservableObject{
    
    @Published var stocks = [
        ItemModel(image: "chair1", title: "Normal Chair", price: "234.000 VND", size: "22,5 x 32 cm", content: "Enjoy this grand accent chair at your next dining party. Featuring gorgeous designs and colors, this chair is sure to delight. The sturdy build of the chair, plus the cushioning throughout is sure to have your guests conversing in comfort.", isSwiped: false, offset: 0),
        ItemModel(image: "chair2", title: "Luxury Chair", price: "500.000 VND", size: "24 x 30 cm", content: "The cotton fabric and retro design will add a fun flair to any room. This chair features a seat height of 17.9-inch, crafted of Birchwood and a cotton blend fabric. Perfect for a living room, family room, den, library, or study. No assembly required, this chair measures 28.3-inch wide by 24.4-inch deep by 29.9-inch tall", isSwiped: false, offset: 0),
        ItemModel(image: "chair3", title: "Room Chair", price: "199.000 VND", size: "25 x 32 cm", content: "SAFAVIEH has been a trusted brand and leader in home furnishings for over 100 years, using their specialty and expertise in crafting the trendiest and highest quality designs and selection of colors; Begin your rug and furniture search with SAFAVIEH and explore over 100,000 products today", isSwiped: false, offset: 0),
        ItemModel(image: "chair4", title: "Office Chair", price: "499.000 VND", size: "21 x 29 cm", content: "Enjoy this grand accent chair at your next dining party. Featuring gorgeous designs and colors, this chair is sure to delight. The sturdy build of the chair, plus the cushioning throughout is sure to have your guests conversing in comfort.", isSwiped: false, offset: 0),
        ItemModel(image: "Lamb1", title: "Lamp", price: "99.000 VND", size: "29 cm", content: "Our small desk Lamp cteates a nice and comforting feeling in the house when spending time with your family as the linen fabric shade softens the light making it better for protecting your eyes.", isSwiped: false, offset: 0),
        ItemModel(image: "bed1", title: "Bed for Couples", price: "298.000 VND", size: "95 x 109 cm", content: "A warm thick side for her and a cool thin side for him. This dual zone comforter is perfect for partners who can’t agree on the ideal sleeping temperature.", isSwiped: false, offset: 0),
    ]
}
