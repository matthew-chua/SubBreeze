//
//  ContentView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 17/4/23.
//

import SwiftUI
import Firebase
import FirebaseCore

struct ContentView: View {
    @State private var loggedIn = false
    @State private var tabSelected: Tab = .checklist
    @State var email = ""
    @State var password = ""
    @State var wrongPassword = false
    init() {
        FirebaseApp.configure()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                wrongPassword = true
            } else {
                //                TODO: update the variable to track that the user has successfully logged in
                loggedIn = true
                wrongPassword = false
                print("LOGGED IN")
            }
        }
    }
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
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .frame(width: 250)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .frame(width: 250)
                Button {
                    login()
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
            if wrongPassword {
                Text("Wrong password, please try again")
                    .foregroundColor(Color.red)
            }
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
