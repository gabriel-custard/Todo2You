//
//  MovieDetailsView.swift
//  Todo2You
//
//  Created by Gabriel Custódio on 09/01/22.
//

import SwiftUI

let fade =  Gradient(colors: [Color.black, Color.gray, Color.clear])

struct ContentView: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    Image( "depp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.white)
                        .mask(LinearGradient(gradient: fade, startPoint: .center, endPoint: .bottom))
                        .frame(height: UIScreen.main.bounds.height * 0.4)
                        .ignoresSafeArea()
                    HStack{
                        Text("The Very Best Of Johnny Depp")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .lineLimit(4)
                        
                        
                        Spacer()
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(Color.white)
                            .frame(width: 22.0, height: 22.0)
                        
                    }.padding(.horizontal, 10.0)
                    HStack{
                        Image(systemName: "heart.fill").foregroundColor(Color.white)
                        Text("1.2K Likes").padding(.trailing, 10)
                        Image(systemName: "circle.bottomhalf.fill").foregroundColor(Color.white)
                        Text("12006 views")
                        Spacer()
                    }.padding(.horizontal, 10.0)
                    ForEach(0 ..< 10, id: \.self) {value in
                        HStack(spacing: 20){
                            Image("firme").resizable().scaledToFit().frame(height:100)
                            VStack(alignment: .leading){
                                Text("Edward Scissorhands").fontWeight(.semibold).lineLimit(2)
                                HStack{
                                    Text("1990").font(.subheadline).fontWeight(.medium)
                                    Text("Drama, Fantasy").font(.subheadline)
                                }
                                
                            }
                            Spacer()
                        }.padding(.all)
                           }
                
                    
                    
                    
                }.frame( minWidth: 0,
                         maxWidth: .infinity,
                         minHeight: 0,
                         maxHeight: .infinity
                )
                
            }.preferredColorScheme(.dark)
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
