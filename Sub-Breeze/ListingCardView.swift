//
//  ListingCardView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct ListingCardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color(hue: 0.907, saturation: 0.493, brightness: 1.0))
                .frame(width: 150, height: 200)
            VStack{
                Image("house").resizable().frame(width: 100, height: 60)

                HStack{
                    VStack(alignment: .leading){
                        Text("29 Durant Ave")
                            .font(.subheadline)
                        Text("$800")
                            .fontWeight(.black)
                        Text("Mar-Aug 2023")
                            .font(.caption)
                    }
                    Image(systemName: "heart.circle")
                }
                .padding(.top)
            }
            
        }.foregroundColor(.black)
    }
}

struct ListingCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListingCardView()
    }
}
