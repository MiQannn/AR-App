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
        
        VStack(alignment: .leading, spacing: 2){
            ZStack{
                
                Color(itemData.image).cornerRadius(15)
                Image(itemData.image).resizable().aspectRatio(contentMode: .fit).padding(15).matchedGeometryEffect(id: itemData.image, in: animation)
            }
            Text(itemData.title).fontWeight(.heavy).foregroundColor(.gray)
            Text(itemData.price).fontWeight(.heavy).foregroundColor(.black)
        }
    }
}
