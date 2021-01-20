//
//  ContentView.swift
//  Cards And Nav
//
//  Created by Ala'a Araishi on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Cards){ card in
                NavigationLink( destination: CardDetailView(card: card)) {
                CardRow(card: card)
    //            .padding(2).background(Color.gray).cornerRadius(20).shadow(radius: 30 )
                }
            }.padding(.top)
            .navigationBarTitle("Cards")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension Color {
    static let oldPrimaryColor = Color(UIColor.systemIndigo)
    static let newPrimaryColor = Color("darkBlue")
    static let lightGray = Color("lightGray")
}

struct CardRow: View {
    let card: Card
    var body: some View {
        VStack{
            HStack(alignment: .top, content: {
                VStack(alignment: .leading){
                    Text(card.name)
                        .font(.system(size: 25,
                                      weight: .medium, design: .serif))
                        .padding(.top, 5)
                    Text(card.phone).padding(.top, 3)
                    Text("try to buy some thing in here and not sure what to add").fontWeight(.light).multilineTextAlignment(.leading).padding(12).font(.system(size: 12)).frame(width: 200, height: 60)
                    Text("12.0$").frame(width: 50, height: 0, alignment: .leading)
                }.padding(.leading, 20).padding(.top, 10)
                
                VStack{
                    Image(card.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipped()
                        .cornerRadius(20)
                        .padding(.trailing, 7)
                        .shadow(color: .black, radius: 20)
                    HStack{
                        Text("📬 \(card.comments)").padding(.trailing).foregroundColor(Color.white)
                        Text("👁‍🗨 \(card.img)").padding(.trailing).foregroundColor(Color.white)
                    }.padding(.top, 5)
                }.padding(.top, 7).padding(.trailing, 7)
            })
            HStack{
                Spacer()
                Text("👍🏻").padding(.horizontal, 30)
                Text("📞").padding(.horizontal, 30)
                Text("✉️").padding(.horizontal, 30)
                Text("👤").padding(.horizontal, 30)
            }.padding(5).background(Color.lightGray)
        }.background(LinearGradient(gradient: Gradient(colors: [.white, .blue, .newPrimaryColor]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(30).padding(2)
        .shadow(color: Color.gray, radius: 33)
    }
}
