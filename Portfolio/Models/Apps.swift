//
//  Model.swift
//  Portfolio
//
//  Created by Fabian Leśniak on 15/10/2023.
//

import Foundation
import SwiftUI


struct Application: Hashable, Codable {
    var name: String
    var category: String
    var tech: String
    var description: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}
