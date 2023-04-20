//
//  ChatView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct ChatView: View {
    
    let data = [1,2,3,4,5,6,7]
    
    let columns = [
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
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        ChatCardView()
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(20.0)
        
    }
}

struct ChatCardView: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.gray)
                .frame(width: 350, height: 100)
            HStack{
                Circle().padding(.leading).frame(width: 80)
                
                VStack(alignment: .leading){
                    Text("matthew")
                        .font(.caption)
                    Text("25 Durant Ave")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("hi, is this available?")
                }
                .padding()
                Spacer()
            }
        }
        
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
