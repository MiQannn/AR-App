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
    var animation : Namespace.ID
    @State var selectedColor = Color.red
    @State var count = 0
    
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Button(action: {
                        withAnimation(.easeOut){show.toggle()}})
                    {
                        Image(systemName: "chevron.left").font(.title).foregroundColor(.black)
                    }

                    Text("Authentic Chair").fontWeight(.bold).foregroundColor(.black).padding(.top)

                    Text(itemData.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(.black)


                }
                
                Spacer(minLength: 0)

                Button(action: {}){
                    Image(systemName: "cart").font(.title).foregroundColor(.black).padding(.bottom, 85)
                }

            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            HStack(spacing: 5){
                VStack(alignment: .leading, spacing: 6){
                    
                    Text("Price").fontWeight(.bold).foregroundColor(.black)
                    Text(itemData.price).fontWeight(.heavy).foregroundColor(.black).font(.largeTitle)
                }
                Image(itemData.image).resizable().aspectRatio(contentMode: .fit).matchedGeometryEffect(id: itemData.image, in: animation)
            }
            .padding(1)
            //.padding(.top, 5)
            .zIndex(1)

            
            ScrollView(.vertical, showsIndicators: false, content:{
            VStack{
                HStack{
                    VStack(alignment: .leading, spacing: 0){
                        
                        Text("Color").foregroundColor(.gray).fontWeight(.bold).padding().font(.system(size: 18))
                        HStack(spacing: 15){

                            ColorButton(color: Color(itemData.image), selectedColor: $selectedColor)

                            ColorButton(color: Color.yellow, selectedColor: $selectedColor)

                            ColorButton(color: Color.green, selectedColor: $selectedColor)
                        }
                  }
                    Spacer(minLength: 0)

                    VStack(alignment: .leading, spacing: 8){
                        Text("Size").fontWeight(.semibold).foregroundColor(.black)
                        Text(itemData.size).fontWeight(.heavy).foregroundColor(.black)
                    }
               }
                .padding(.horizontal)
                .padding(.top,-20)
                
                Text(itemData.content).foregroundColor(.black).multilineTextAlignment(.leading).padding()//.font(Font.system(size:10))
            
                
                HStack(spacing: 20){
                    Button(action: {
                        if count > 0{count -= 1}
                    }){
                        Image(systemName: "minus").font(.title2).foregroundColor(.black).frame(width: 35, height: 35).background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    }

                    Text("\(count)").font(.title2)

                    Button(action: {count += 1}){
                        Image(systemName: "plus").font(.title2).foregroundColor(.black).frame(width: 35, height: 35).background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    }
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "suit.heart.fill").font(.title2).foregroundColor(.white).padding(10).background(Color.red).clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                Spacer(minLength: 0)
                
                    
                Button(action: {}){
                    Text("VIEW IN YOUR ROOM").font(.title2).fontWeight(.bold).foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width - 30).background(Color.black.opacity(0.5).clipShape(Capsule()))
                }.padding(.top, 10)
                
                Button(action: {}){
                    Text("BUY NOW").font(.title2).fontWeight(.bold).foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width - 30).background(Color.black.opacity(0.5).clipShape(Capsule()))
                }
                .padding(.top)
                .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 0)
            }
            })
            .background(Color.blue.opacity(0.3).clipShape(CustomCorner()).padding(.top,-100))
            .zIndex(0)
            
        }
        
        .background(Color(.white).ignoresSafeArea(.all, edges: .top))
        .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
        .onAppear{
            selectedColor = Color(itemData.image)
        }
    }
}

