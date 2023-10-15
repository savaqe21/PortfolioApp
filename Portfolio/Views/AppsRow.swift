//
//  AppsRow.swift
//  Portfolio
//
//  Created by Fabian Leśniak on 15/10/2023.
//

import SwiftUI

struct AppsRow: View {
    var app: Application
    
    var body: some View {
        HStack {
            app.image
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Text(app.name)
                .font(.subheadline)
            
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        AppsRow(app: apps[0])
        AppsRow(app: apps[1])
       }
}
