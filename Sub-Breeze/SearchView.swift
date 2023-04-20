//
//  SearchView.swift
//  Sub-Breeze
//
//  Created by matthew chua on 19/4/23.
//

import SwiftUI

struct SearchView: View {
    private var listOfCountry = ["29 Durant Ave", "12 Bancroft Way", "13 Telegraph Ave"]
    @State var searchText = ""
    var countries: [String] {
        // Make countries lowercased
        let lcCountries = listOfCountry.map { $0.lowercased() }
        
        return searchText == "" ? lcCountries : lcCountries.filter { $0.contains(searchText.lowercased()) }
    }
    var body: some View {
        
        NavigationView {
            List {
                ForEach(countries, id: \.self) { country in
                    HStack {
                        Text(country.capitalized)
                        Spacer()
                        Image(systemName: "arrow.turn.down.right")
                            .foregroundColor(Color.blue.opacity(0.8))
                    }
                    .padding()
                }
            }
            .searchable(text: $searchText)
        }
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
