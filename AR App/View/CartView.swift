//
//  CartView.swift
//  AR App
//
//  Created by MiQan on 15/12/2021.
//

import SwiftUI



struct CartView: View {
    
@State private var selection: String? = nil
@StateObject var cartData = CartViewModel()
    var body: some View {
       
       
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack(spacing: 0){
                    ForEach(cartData.stocks){stock in
                        CartItemView(stock: $cartData.stocks[getIndex(stock: stock)] )
                    }
                }
            }
        }
            .background(Color.gray.opacity(0.2).ignoresSafeArea())
}
    func getIndex(stock: ItemModel)->Int{
        return cartData.stocks.firstIndex{ (stock1) -> Bool in
            return stock.id == stock1.id
        } ?? 0
    }
}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

