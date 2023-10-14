//
//  ContentView.swift
//  Portfolio
//
//  Created by Fabian Leśniak on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section{
                    NavigationLink(destination: AboutMeView()){
                        HStack{
                            Image("savaqe21-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100, alignment: .center)
                            VStack{
                                Text("Fabian Leśniak")
                                    .font(.headline)
                                Text("A little about me")
                                    .font(.callout)
                                    .foregroundColor(.element)
                            }
                        }
                    }
                }
                // do przerobienia na foreach
                Section(header: Text("Mine apps")) {
                    NavigationLink(destination: AboutMeView()){
                        HStack{
                            Image("iExpense-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            VStack{
                                Text("iExpense")
                                    .font(.subheadline)
                            }
                        }
                    }
                    
                    NavigationLink(destination: AboutMeView()){
                        HStack{
                            Image("BetterRest-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            VStack{
                                Text("BetterRest")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .headerProminence(.increased)
            }
            .navigationTitle("Portfolio")
        }
    }
}

#Preview {
    ContentView()
}
