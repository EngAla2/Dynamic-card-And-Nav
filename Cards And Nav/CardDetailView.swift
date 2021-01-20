//
//  CardDetailView.swift
//  Cards And Nav
//
//  Created by Ala'a Araishi on 1/20/21.
//

import SwiftUI

struct CardDetailView: View {
    let card: Card
    
    var body: some View {
        VStack {
            Image(card.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipped()
                .cornerRadius(200)
                .shadow(radius: 3)
            Text(card.name)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.gray)
            Form {
                Section {
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(card.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(card.email)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("About")
                        Spacer()
                        Text(card.address)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                    }
                }
                Section {
                    Button(action: {
                        print("Send a message")
                    }) {
                        Text("Send a message")
                    }
                    Button(action: {
                        print("Call")
                    }) {
                        Text("Call")
                    }
                }
            }
        }
        .environment(\.colorScheme, .dark)
    }

}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: Cards[5])
    }
}
