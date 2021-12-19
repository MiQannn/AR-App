//
//  CartItemView.swift
//  AR App
//
//  Created by MiQan on 15/12/2021.
//

import SwiftUI

struct CartItemView: View {
    
    @Binding var stock: ItemModel
    @Binding var stocks: [ItemModel]
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color.blue]), startPoint: .leading, endPoint: .trailing)
            
            
            HStack{
                Spacer()
                
                Button(action: deleteItem){
                    Image(systemName: "trash")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 90, height: 50)
                }
            }
            
            HStack(spacing: 15){
                
                Image(stock.image).resizable().aspectRatio(contentMode: .fill).frame(width: 110, height: 110).cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text(stock.title).fontWeight(.semibold).foregroundColor(.black)
                    Text(stock.size).fontWeight(.semibold).foregroundColor(.black)
                    
                    HStack(spacing: 15){
                        
                        Text(getPrice(value: stock.price2)).font(.title2).fontWeight(.heavy).foregroundColor(.black)
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            if stock.quantity > 1 {stock.quantity -= 1}
                        }){
                            Image(systemName: "minus").font(.system(size: 16, weight: .heavy)).foregroundColor(.black)
                        }
                        
                        Text("\(stock.quantity)").fontWeight(.heavy).foregroundColor(.black).padding(.vertical, 5).padding(.horizontal, 10).background(Color.black.opacity(0.06))
                        
                        Button(action: {stock.quantity += 1}){
                            Image(systemName: "plus").font(.system(size: 16, weight: .heavy)).foregroundColor(.black)
                        }
                    }
                }
            }
            .padding()
            .background(Color(.systemGray3))
            .contentShape(Rectangle())
            .offset(x: stock.offset)
            .gesture(DragGesture().onChanged(onChanged(value: )).onEnded(onEnd(value:)))
        }
    }
    
    func onChanged(value: DragGesture.Value){
        
        if value.translation.width < 0 {
            
            if stock.isSwiped{
                stock.offset = value.translation.width - 90
            }
            else{
                stock.offset = value.translation.width
            }
        }
    }
    
    func onEnd(value: DragGesture.Value){
        withAnimation(.easeOut){
            if value.translation.width < 0 {
                if value.translation.width > UIScreen.main.bounds.width / 2 {
                    stock.offset = -1000
                    deleteItem()
                }
                else if -stock.offset > 50 {
                    stock.offset = -90
                    stock.isSwiped = true
                }
                else{
                    stock.isSwiped = false
                    stock.offset = 0
                }
            }
            else{
                stock.isSwiped = false
                stock.offset = 0
            }
        }
    }
    
    func deleteItem(){
        stocks.removeAll { (stock) -> Bool in
            return self.stock.id == stock.id
        }
    }
}
        
    func getPrice(value: Float) -> String{
        
        let format = NumberFormatter()
        format.numberStyle = .currency
        
        return format.string(from: NSNumber(value: value)) ?? ""
    }
