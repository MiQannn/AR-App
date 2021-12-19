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
                        CartItemView(stock: $cartData.stocks[getIndex(stock: stock)], stocks: $cartData.stocks)
                    }
                }
            }
            
            VStack{
                HStack{
                    
                    Text("Total").fontWeight(.heavy).foregroundColor(.black)
                    
                    Spacer( )
                    
                    Text(calculateTotalPrice()).font(.title).fontWeight(.heavy).foregroundColor(.black)
                }
                .padding([.top, .horizontal])
                
                Button(action: {}){
                    Text("Check out").font(.title2).fontWeight(.heavy).foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width - 30).background(Color.blue.opacity(0.9))
                        .cornerRadius(15)
                }
            }
            .background(Color.white)
        }
        .background(Color.gray.opacity(0.2).ignoresSafeArea())
}
    func getIndex(stock: ItemModel)->Int{
        return cartData.stocks.firstIndex{ (stock1) -> Bool in
            return stock.id == stock1.id
        } ?? 0
    }
    
    func calculateTotalPrice()->String{
        var price: Float = 0
        cartData.stocks.forEach{ (stock) in
            price += Float(stock.quantity) * stock.price2
        }
        return getPrice(value: price)
    }
    

}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

