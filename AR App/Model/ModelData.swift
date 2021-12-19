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
    var price1: String
    var size: String
    var content: String
    var isSwiped: Bool
    var offset: CGFloat
    var quantity: Int
    var price2: Float
}

var stocks = [
    
    ItemModel(image: "chair1", title: "Normal Chair", price1: "$1.99", size: "22,5 x 32 cm", content: "Enjoy this grand accent chair at your next dining party. Featuring gorgeous designs and colors, this chair is sure to delight. The sturdy build of the chair, plus the cushioning throughout is sure to have your guests conversing in comfort.", isSwiped: false, offset: 0, quantity: 1, price2: 1.99),
    ItemModel(image: "chair2", title: "Luxury Chair", price1: "$9.99", size: "24 x 30 cm", content: "The cotton fabric and retro design will add a fun flair to any room. This chair features a seat height of 17.9-inch, crafted of Birchwood and a cotton blend fabric. Perfect for a living room, family room, den, library, or study. No assembly required, this chair measures 28.3-inch wide by 24.4-inch deep by 29.9-inch tall", isSwiped: false, offset: 0, quantity: 1, price2: 9.99),
    ItemModel(image: "chair3", title: "Room Chair", price1: "$13.99", size: "25 x 32 cm", content: "SAFAVIEH has been a trusted brand and leader in home furnishings for over 100 years, using their specialty and expertise in crafting the trendiest and highest quality designs and selection of colors; Begin your rug and furniture search with SAFAVIEH and explore over 100,000 products today", isSwiped: false, offset: 0, quantity: 1, price2: 13.99),
    ItemModel(image: "chair4", title: "Office Chair", price1: "$2.99", size: "21 x 29 cm", content: "Enjoy this grand accent chair at your next dining party. Featuring gorgeous designs and colors, this chair is sure to delight. The sturdy build of the chair, plus the cushioning throughout is sure to have your guests conversing in comfort.", isSwiped: false, offset: 0, quantity: 1, price2: 2.99),
    ItemModel(image: "lamp1", title: "Lamp", price1: "$0.99", size: "29 cm", content: "Our small desk Lamp cteates a nice and comforting feeling in the house when spending time with your family as the linen fabric shade softens the light making it better for protecting your eyes.", isSwiped: false, offset: 0, quantity: 1, price2: 0.99),
    ItemModel(image: "bed1", title: "Bed for Couples", price1: "$99.99", size: "95 x 109 cm", content: "A warm thick side for her and a cool thin side for him. This dual zone comforter is perfect for partners who can’t agree on the ideal sleeping temperature.", isSwiped: false, offset: 0, quantity: 1, price2: 9.99),
    ItemModel(image: "chair5", title: "Cushion Seat Back", price1: "$4.99", size: "20 x 50 cm", content: "Ergonomic Back Design: This dining side chairs set has elegant and modern design with fabric cushion seat and back, backrest is designed based on ergonomic standard and human body features, comfortable and elegant.", isSwiped: false, offset: 0, quantity: 1, price2: 4.99),
    ItemModel(image: "gamingchair", title: "Gaming Chair", price1: "$320.99", size: "95 x 109 cm", content: "Easy assembly, dims, and warranty: all tools needed for assembly are included; measures 26-3/4 inches wide by 29-1/4 inches deep by 45-3/4 to 49-1/2 inches high; seat height ranges from 18.3 to 22 inches; backed by our 1-year limited warranty", isSwiped: false, offset: 0, quantity: 1, price2: 320),
    ItemModel(image: "sofa1", title: "Mid-Century Sofa", price1: "$130", size: "100 x 78 cm", content: "Wide, comfortable cushions are a hallmark of this mid-century inspired sofa. Easy-care ivory upholstery and reversible back cushions help keep this piece looking fresh. A hardwood frame connects to tapered wood legs and lends structure to the foam-padded cushions. High arms give additional support.", isSwiped: false, offset: 0, quantity: 1, price2: 130),
    ItemModel(image: "table1", title: "Coffee Table", price1: "$150", size: "70 x 70 cm", content: "The Genoa Table is elegant and uniquely define by its style of slightly flared legs, the cantered lower shelf and the circular top which is highlighted by clear tempered beveled glass. The solid wood frame is sturdy.", isSwiped: false, offset: 0, quantity: 1, price2: 150)
]

var scroll_Tabs = ["Furniture", "Health & Household", "Home & Kitchen", "Luggage", "Fashion"]
