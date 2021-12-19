//
//  BagView.swift
//  AR App
//
//  Created by MiQan on 09/12/2021.
//

import SwiftUI

struct ItemView: View{
    
    var itemData : ItemModel
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 2){
            ZStack{
                
                Color(itemData.image).cornerRadius(15)
                Image(itemData.image).resizable().aspectRatio(contentMode: .fit).frame(width: 130, height: 160).matchedGeometryEffect(id: itemData.image, in: animation).padding()
            }
            Text(itemData.title).fontWeight(.heavy).foregroundColor(.gray)
            Text(itemData.price1).fontWeight(.heavy).foregroundColor(.black)
        }
    }
}
