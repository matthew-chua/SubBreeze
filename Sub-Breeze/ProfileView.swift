//
//  ProfileView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct ProfileView: View {
    let data = [1,2,3,4,5,6,7]
    
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
       ]
    var body: some View {
        VStack{
            HStack{
                Text("Sub-Breeze")
                    .font(.title)
                Spacer()
                Image(systemName: "heart.circle").resizable().frame(width: 40.0, height: 40.0)
                
            }
            
            Circle().padding(.top).frame(width: 180)
            Text("matthew")
                .font(.title)
            
            Text("My Listings:")
                .fontWeight(.bold)
                .padding(.top)
                .frame(width: 300, alignment: .leading)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        ListingCardView()
                    }
                }
                .padding(.horizontal)
            }
            Spacer()
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
