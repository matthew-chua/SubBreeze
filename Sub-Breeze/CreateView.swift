//
//  CreateView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct CreateView: View {
    @State var address = ""
    @State var price = ""
    @State var description = ""
    @State var duration = ""
    var body: some View {
        VStack{
            HStack{
                Text("Sub-Breeze")
                    .font(.title)
                Spacer()
                Image(systemName: "heart.circle").resizable().frame(width: 40.0, height: 40.0)
                
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.gray).padding(.top)
                    .frame(height: 200)
                VStack{
                    Image(systemName: "photo.stack")
                        .resizable()
                        .frame(width: 60.0, height: 60)
                    Text("Upload Images")
                        .padding(.top)
                }
                
            }
            Form {
                
                TextField("Address", text: $address)
                TextField("Price", text: $price)
                TextField("Duration", text: $duration)
                TextField("Description", text: $description, axis: .vertical)
            }.scrollContentBackground(.hidden).frame(height: 300)
            Button {
            } label: {
                Text("LIST!")
                    .padding()
                    .foregroundColor(.pink)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 20
                        )
                        .stroke(.pink, lineWidth: 2) .frame(minWidth: 195)
                    )
            }
            Spacer()

        }
        .padding(20.0)
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
