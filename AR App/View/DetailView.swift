//
//  DetailView.swift
//  AR App
//
//  Created by MiQan on 13/12/2021.
//

import SwiftUI

struct DetailView: View{
    
    @Binding var itemData : ItemModel!
    @Binding var show : Bool
    
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Button(action: {
                        withAnimation(.easeOut){show.toggle()}
                    }) {
                        Image(systemName: "chevron.left").font(.title).foregroundColor(.white)
                    }
                    
                    Text("Kendal White Chair").fontWeight(.bold).foregroundColor(.white).padding(.top)
                    
                    Text(itemData.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                }
                Spacer(minLength: 0)
                
                Button(action: {}){
                    Image(systemName: "cart").font(.title).foregroundColor(.white)
                }
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            Spacer(minLength: 0)
        }
        .background(Color(itemData.image).ignoresSafeArea(.all, edges: .top))
        .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
    }
}
