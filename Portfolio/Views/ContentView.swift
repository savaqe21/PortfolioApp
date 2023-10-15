//
//  ContentView.swift
//  Portfolio
//
//  Created by Fabian Leśniak on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    private var count = apps.count
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: AboutMeView()) {
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
                
                Section (header: Text("Mine apps")) {
                    NavigationLink(destination: AboutMeView()) {
                        AppsRow(app: apps[0])
                    }
                    NavigationLink(destination: AboutMeView()) {
                        AppsRow(app: apps[1])
                    }
                }
            }
            .headerProminence(.increased)
            .navigationTitle("Portfolio")
        }
    }
}

#Preview {
    ContentView()
}
