//
//  ContentView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 17/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var loggedIn = false
    @State private var tabSelected: Tab = .checklist
    
    var body: some View {
        
        if !loggedIn {
            VStack {
                Spacer()
                Text("Sub-Breeze")
                    .font(.largeTitle)
                    .bold()
                    .padding([.top, .leading, .trailing])
                Text("make sub-leasing a breeze!")
                    .italic()
                Button {
                    loggedIn = true
                } label: {
                    Text("Log In")
                        .padding()
                        .foregroundColor(.pink)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 20
                            )
                            .stroke(.pink, lineWidth: 2) .frame(minWidth: 195)
                        )
                }
                .padding(.top)
                Text("Create an account here")
                
                
                Spacer()
                Image("house")
                Spacer()
            }
            .padding()
        } else {
            ZStack {
                VStack {
                    TabView(selection: $tabSelected) {
                        if tabSelected == .checklist {
                            HomeView()
                        } else if tabSelected == .magnifyingglass {
                            SearchView()
                        } else if tabSelected == .plus {
                            CreateView()
                        } else if tabSelected == .message {
                            ChatView()
                        } else {
                            ProfileView()
                        }
                    }
                }
                VStack {
                    Spacer()
                    TabBar(selectedTab: $tabSelected)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
