//
//  ListingView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct ListingView: View {
    var body: some View {
        VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color(hue: 0.907, saturation: 0.493, brightness: 1.0))
                    .frame(width: 350, height: 500)
                VStack(alignment: .leading){
                    Image("house")
                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            Text("Durant Ave")
                                .font(.headline)
                            Text("$800")
                                .font(.title)
                                .fontWeight(.bold)
                            Text("Mar - Aug 2023")
                        }
                        Spacer()
                        Image(systemName: "heart.circle").resizable().frame(width: 40.0, height: 40.0)
                        
                    }
                    Text("Lorem ipsum blah blha blah")
                        .padding(.top)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.gray).frame(height: 50)
                        Text("Message Owner").fontWeight(.semibold).foregroundColor(.white)
                    }.padding()
                    
                    
                    
                }.padding().frame(width: 350)
                
            }.frame(width: 350, height: 500)
            Spacer()
        }
        
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
    }
}
