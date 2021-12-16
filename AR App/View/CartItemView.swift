//
//  CartItemView.swift
//  AR App
//
//  Created by MiQan on 15/12/2021.
//

import SwiftUI

struct CartItemView: View {
    
    @Binding var stock: ItemModel
    var body: some View {
        
        HStack(spacing: 15){
            Image(stock.image).resizable().aspectRatio(contentMode: .fill).frame(width: 130, height: 130).cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 10){
                Text(stock.title).fontWeight(.semibold).foregroundColor(.black)
                Text(stock.size).fontWeight(.semibold).foregroundColor(.black)
                HStack(spacing: 15){
                    Text("\(stock.price)").font(.title2).fontWeight(.heavy).foregroundColor(.black)
                    Spacer(minLength: 0)
                    
                    Button(action: {}){
                        Image(systemName: "minus").font(.system(size: 16, weight: .heavy)).foregroundColor(.black)
                    }
                    
                   
                    
                    Button(action: {}){
                        Image(systemName: "plus").font(.system(size: 16, weight: .heavy)).foregroundColor(.black)
                    }
                }
            }
        }
        .padding()
    }
}

