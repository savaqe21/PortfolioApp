//
//  ContentView.swift
//  Portfolio
//
//  Created by Fabian Leśniak on 28/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Fabian Leśniak", destination: AboutMeView())
            }
            .navigationTitle("Portfolio")
        }
    }
}

#Preview {
    ContentView()
}
