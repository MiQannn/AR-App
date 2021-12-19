//
//  Home.swift
//  AR App
//
//  Created by MiQan on 09/12/2021.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var selectedItem : ItemModel!
    
    var body: some View {
        
        ZStack{
            NavigationView{
                VStack(spacing: 5){
                ZStack{
                    HStack(spacing: 15){
                        Button(action: {}, label: {
                            Image(systemName: "line.horizontal.3.decrease")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                            NavigationLink(destination: CartView().navigationBarBackButtonHidden(false).navigationTitle("My Cart").font(.headline), label: {Image(systemName: "cart").font(.title).foregroundColor(.black)}).navigationBarHidden(true).navigationTitle("Home").navigationBarTitleDisplayMode(.inline).font(.headline)
//                            Button(action: {}, label: {
//                                Image(systemName: "cart")
//                                    .font(.title)
//                                    .foregroundColor(.black)
//                            })
                            
                            Circle() .fill(Color.red) .frame(width: 15, height: 15) .offset(x: 3, y: -5)
                        })
                        }
                    Text("AR Shop").font(.title).fontWeight(.heavy).foregroundColor(.black)
                }
                
                
                
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content:{
                    
                    VStack{
                        HStack{
                            Text("Welcome") .font(.title).fontWeight(.heavy).foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom,10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(spacing: 15){
                                ForEach(scroll_Tabs, id: \.self){ tab in
                                    TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top,10)
                        })
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 15), count: 2), spacing: 15){
                            
                            ForEach(stocks){stock in
                                ItemView(itemData: stock, animation: animation).onTapGesture {
                                    withAnimation(.easeIn){
                                        selectedItem = stock
                                        show.toggle()
                                    }
                                }
                            }
                        }
                        .padding()
                        .padding(.top,10)
                    }
                })
            }}
            .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
            
            if selectedItem != nil && show{
                DetailView(itemData: $selectedItem, show: $show, animation: animation)
            }
        }
        
        .ignoresSafeArea(.all)
    }
}

